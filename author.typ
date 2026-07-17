#let show-twt = false
#let author = (
  (
    firstname: "Devin",
    lastname: "Droddy",
    phone: "(202) 697-2878",
    email: "devin@justdeeevin.dev",
    homepage: "https://justdeeevin.dev",
    github: "justDeeevin",
    linkedin: "devindroddy",
    positions: (
      "Systems Programmer",
      "Web Developer",
      "Open Source Contributor",
    ),
    address: "Silver Spring, MD",
  )
    + (if show-twt { (twitter: "justDeeevin") } else { (:) })
)

