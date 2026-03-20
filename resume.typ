#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Devin",
    lastname: "Droddy",
    email: "devin@justdeeevin.dev",
    homepage: "https://justdeeevin.dev",
    phone: "(+1) 202-697-2878",
    github: "justDeeevin",
    twitter: "justDeeevin",
    linkedin: "devindroddy",
    address: "Silver Spring, MD",
    positions: (
      "Systems Programmer",
      "Web Developer",
    ),
  ),
  keywords: ("Engineer", "Architect"),
  description: "Devin Droddy Resume",
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  show-address-icon: true,
  paper-size: "us-letter",
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
  title: "NuhxBoard",
  location: [#github-link("justdeeevin/nuhxboard")],
  date: "February 2024 - Present",
  description: "Developer",
)

#resume-item[
  Cross-platform real-time input visualizer with extreme customizability written in (mostly async) Rust with the #link("https://iced.rs")[Iced GUI framework]. Created as a successor to #link("https://github.com/thonoht/nohboard")[NohBoard].
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
  title: "Gardener Harvesting",
  location: [#github-link("community-cheer/gardner-harvesting")],
  date: "Summer 2024",
  description: "Designer/Developer",
)

#resume-item[
  Designed and developed a mobile app for #link("https://www.communitycheer.org/long-branch-gardeners-1")[Long Branch Gardeners] volunteers to track the crops they harvest. Users and data stored in a Firebase backend.
]

= Skills

#resume-skill-item(
  "Programming Languages",
  (
    strong("Rust"),
    strong("Nix"),
    strong("TypeScript"),
    "Java",
    "C",
    "C#",
    "Python",
  ),
)
#resume-skill-item(
  "Soft skills",
  (
    strong("Fast learner"),
    "Critical thinking",
    "Communication",
    "Teamwork",
    "Problem solving",
  ),
)
#resume-skill-item(
  "Tools",
  (
    strong("Linux"),
    strong("Git"),
    "Systems Tool Kit (STK)",
    "Onshape",
    "Autodesk Inventor",
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
