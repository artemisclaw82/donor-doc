#let seal-color = rgb("#4339db")
#let seal-white = rgb("#fefefe")
#set page(
  fill: seal-color,
  margin: (
    y: 0cm,
    x: 0cm,
  ),
)

#set text(font: ("TT hoves pro", "Roboto"), size: 24pt)

#let seal-description = (
  lorem(50)
)

#let initiatives = (
  (
    name: "SEAL 911",
    description: lorem(20),
    image: "logos/seal911.svg",
  ),
  (
    name: "Frameworks",
    description: lorem(20),
    image: "logos/framework.svg",
  ),
  (
    name: "SEAL Intel",
    description: lorem(20),
    image: "logos/intel.svg",
  ),
  (
    name: "Certifications",
    description: lorem(20),
    image: "logos/certifications.svg",
  ),
)

#set align(center + bottom)
#stack(
  rect(
    inset: 40pt,
    fill: rgb(seal-color),
    width: 100%,
    height: 33%,
    align(horizon, text(seal-description, size: 12pt, fill: seal-white)),
  ),

  align(horizon, rect(
    height: 66%,
    width: 100%,
    inset: 15pt,
    fill: seal-white,
    grid(
      columns: (40%, 40%),
      gutter: 35pt,
      align: center,
      ..initiatives.map(initiative => square(
        width: 100%,
        inset: 10pt,
        radius: 1%,
        stroke: rgb("#4339db"),
        stack(
          spacing: 10pt,
          image(initiative.image, height: 100pt, width: 100pt),
          text(
            initiative.name,
            fill: seal-color,
            weight: "medium",
            kerning: true,
            tracking: 0.5pt,
          ),
          text(
            initiative.description,
            fill: seal-color,
            size: 12pt,
            weight: "light",
          ),
        ),
      ))
    ),
  )),
)
