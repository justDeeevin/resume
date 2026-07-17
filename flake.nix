{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    typix = {
      url = "github:loqusion/typix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      typix,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        typixLib = typix.lib.${system};

        src = typixLib.cleanTypstSource ./.;
        unstable_typstPackages = [
          {
            name = "modern-cv";
            version = "0.10.0";
            hash = "sha256-BqnugXI04bdlkOWe2RvSBwDnoTZMYk/1RQXnFpXdBvs=";
          }
          {
            name = "fontawesome";
            version = "0.6.0";
            hash = "sha256-dgb+YAYLEKgMMEWa8yelMvRdEoesPj5HI+70w3mCUcQ=";
          }

          {
            name = "linguify";
            version = "0.5.0";
            hash = "sha256-rkHC4vzlVvPb5F4Wmylk+xb2dbJjR3Ip5KephGmdlUM=";
          }

        ];
        commonArgs = {
          typstSource = "resume.typ";

          fontPaths = [
            "${pkgs.roboto}/share/fonts/truetype"
            "${pkgs.source-sans-pro}/share/fonts/truetype"
            "${pkgs.source-sans}/share/fonts/truetype"
            "${pkgs.font-awesome}/share/fonts/opentype"
          ];
        };

        build-drv = typixLib.buildTypstProject (
          commonArgs
          // {
            inherit src unstable_typstPackages;
          }
        );

        build-script = typixLib.buildTypstProjectLocal (
          commonArgs
          // {
            inherit src unstable_typstPackages;
          }
        );

        watch-script = typixLib.watchTypstProject commonArgs;
      in
      {
        checks = {
          inherit build-drv build-script watch-script;
        };

        packages.default = build-drv;

        apps = rec {
          default = watch;
          build = flake-utils.lib.mkApp {
            drv = build-script;
          };
          watch = flake-utils.lib.mkApp {
            drv = watch-script;
          };
        };

        devShells.default = typixLib.devShell {
          inherit (commonArgs) fontPaths;
          packages = [
            watch-script
          ];
        };
      }
    );
}
