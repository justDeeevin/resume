#import "@preview/modern-cv:0.10.0": *
#import "author.typ": author

#show: resume.with(
  author: author,
  profile-picture: none,
  show-footer: false,
  paper-size: "us-letter",
  show-address-icon: true,
)

= Experience

#resume-entry(
  title: "Platform Manager (Part Time)",
  location: "Remote",
  date: "August 2024 - December 2025",
  description: "Pyro Inc.",
  title-link: "https://pyro.host",
)

#resume-item[
  Architected and led development of distributed backend for infrastructure-as-a-service product using async Rust, PostgreSQL, Redis, Kubernetes
]

#resume-entry(
  title: "Assistant Director",
  location: "Silver Spring, MD",
  date: "2024 - 2025",
  description: "Lumina Studio Theatre",
  title-link: "https://luminastudio.org",
)

#resume-item[
  Instructed and directed actors in the Guild rehearsal group, performing Shakespeare and other classical plays
]

#resume-entry(
  title: "Network Engineering Intern",
  location: "Howard County, MD",
  date: "Summer 2023",
  description: "Johns Hopkins University Applied Physics Laboratory",
  title-link: "https://www.jhuapl.edu/education/stem-outreach/aspire",
)

#resume-item[
  Designed and developed a program to triangulate the position of an arbitrary radio source using Rust and MATLAB
]

#resume-entry(
  title: "Apprentice Counselor",
  location: "Germantown, MD",
  date: "Summer 2022",
  description: "Valley Mill Camp",
  title-link: "https://valleymill.com",
)

#resume-item[
  Helped manage rock climbing wall, alternating between boys’ and girls’ side of camp. Frequently chosen by Manager to temporarily fill other counselor roles as needed
]

= Projects

#resume-entry(
  title: "Gardener Harvesting",
  location: github-link("community-cheer/gardner-harvesting"),
  date: "Summer 2024",
  description: "Designer/Developer",
)

#resume-item[
  Designed and developed a React Native mobile app for #link("https://www.communitycheer.org/long-branch-gardeners-1")[Long Branch Gardeners] volunteers to track the crops they harvest. Users and data stored in a Firebase backend.
]

#resume-entry(
  title: "NuhxBoard",
  location: github-link("justdeeevin/nuhxboard"),
  date: "February 2024 - Present",
  description: "Developer",
)

#resume-item[
  Cross-platform real-time input visualizer with extreme customizability written in (mostly async) Rust with the #link("https://iced.rs")[Iced GUI framework].
]

#resume-entry(
  title: "serde-beve",
  location: github-link("justdeeevin/serde-beve"),
  date: "June - September 2025",
  description: "Developer",
)

#resume-item[
  Rust library for the serialization and deserialization of the #link("https://github.com/beve-org/beve")[BEVE] binary data format using the serde framework.
]

#resume-entry(
  title: "BYOR (Bring Your Own Runtime)",
  location: github-link("justdeeevin/byor"),
  date: "December 2025",
  description: "Developer",
)

#resume-item[
  Rust library abstracting over common runtime-specific async functionality such as task spawning and synchronization primitives, allowing for libraries to implement complex async behavior without locking their users into any specific runtime.
]

#resume-entry(
  title: "ratatui-elm",
  location: github-link("justdeeevin/ratatui-elm"),
  date: "July - December 2025",
  description: "Developer",
)

#resume-item[
  Rust library providing a framework for using #link("https://guide.elm-lang.org/architecture/")[the ELM architecture] to build #link("https://ratatui.rs")[ratatui] TUI applications.
]

#resume-entry(
  title: "nixpkgs",
  location: github-link("nixos/nixpkgs"),
  date: "December 2024 - Present",
  description: "Package contributor & maintainer",
)

#let nixpkgs-link(package-name) = link(
  "https://search.nixos.org/packages?channel=unstable&query=" + package-name,
)[#text(package-name)]

#resume-item[
  Contributing and maintaining new software packages for the #link("https://nixos.org")[NixOS] Linux distribution. Packages maintained:
  - #nixpkgs-link("syspower")
  - #nixpkgs-link("ashell")
  - #nixpkgs-link("textlsp")
  - #nixpkgs-link("ugdb")
]

= Skills

#resume-skill-item(
  "Programming",
  (
    "Rust",
    "Nix",
    "TypeScript",
    "Svelte",
    "Haskell",
    "React",
    "Java",
    "C",
    "C#",
    "Python",
  ),
)
#resume-skill-item(
  "Soft skills",
  (
    "Adaptability",
    "Critical thinking",
    "Communication",
    "Teamwork",
    "Problem solving",
  ),
)
#resume-skill-item(
  "Tools",
  (
    "Linux",
    "Git",
    "Onshape",
    "Autodesk Inventor",
    "KiCad",
  ),
)

// spacing fix, not needed if you use `resume-skill-grid`
#block(below: 0.65em)

= Education

#resume-entry(
  title: "University of Maryland",
  location: "College Park, MD",
  date: "August 2025 - 2029 (anticipated)",
  description: "Anticipated B.S. in Computer Science",
)

#resume-entry(
  title: "Montgomery College",
  location: "Rockville, MD",
  date: "August - December 2024",
  description: "Dual Enrollment",
)

#resume-entry(
  title: "Wheaton High School",
  location: "Silver Spring, MD",
  date: "2021 - 2025",
  description: "3.9 GPA (4.79 Weighted)",
)
