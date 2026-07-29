#import "@preview/modern-cv:0.10.0": *
#import "../../author.typ": author

#show: resume.with(
  author: author,
  profile-picture: none,
  show-footer: false,
  paper-size: "us-letter",
  show-address-icon: true,
)

= Skills

#resume-entry(title: "Versatile Software Engineering")
#resume-item[
  - Extensive experience writing Rust code both professionally and for personal projects
    - Led development of secure distributed systems at scale
    - High-performance desktop and terminal applications, ergonomic and solution-oriented libraries, and async embedded firmware, among other personal projects
  - Low-level C application development in university coursework
  - Embedded C++ development for UMD rocketry team
  - Familiarity with various other languages and frameworks through experimentation
]

#resume-entry(title: "Leadership and Collaboration")
#resume-item[
  - Guided team of professional engineers through the development of infrastructure-as-a-service product serving thousands of users
  - Instructed and directed high-school aged actors in Shakespeare and other classical theatre
  - Extensive open-source contribution portfolio
]

= Notable Works

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
  title: "nixpkgs",
  location: github-link("nixos/nixpkgs"),
  date: "December 2024 - Present",
  description: "Package contributor & maintainer",
)

#let nixpkgs-link(package-name) = link(
  "https://search.nixos.org/packages?channel=unstable&query=" + package-name,
)[#text(package-name)]

#resume-item[
  Contributing and maintaining multiple new software packages for the #link("https://nixos.org")[NixOS] Linux distribution.
]

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

= Professional Experience

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
  Instructed and directed actors in the Guild (high school aged) rehearsal group, performing Shakespeare and other classical plays
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
