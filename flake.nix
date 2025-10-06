{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      lib = pkgs.lib;
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        TYPST_FONT_PATHS = lib.concatStringsSep ":" (
          with pkgs;
          [
            roboto
            source-sans
            source-sans-pro
            font-awesome
          ]
        );
      };
    };
}
