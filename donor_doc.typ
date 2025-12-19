
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
  image("logos/seal.svg", height: auto),
  rect(
    inset: 40pt,
    fill: rgb(seal-color),
    width: 100%,
    height: 20%,
    align(horizon, text(seal-description, size: 12pt, fill: seal-white)),
  ),

  align(horizon, rect(
    height: 66%,
    width: 100%,
    inset: 15pt,
    fill: seal-white,
    grid(
      columns: (40%, 40%),
      column-gutter: 60pt,
      row-gutter: 38pt,
      align: center,
      ..initiatives.map(initiative => rect(
        width: 110%,
        height: 42%,
        inset: 10pt,
        radius: 1%,
        stroke: rgb("#4339db"),
        stack(
          spacing: 10pt,
          image(initiative.image, fit: "contain", height: 70pt),
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
#pagebreak()

#let tier-data = (
  (
    name: "Paladin",
    image: "logos/paladin.png",
    perks: ("dog", "cat", "mouse"),
    cost: "$1,000,000 per year",
  ),
  (
    name: "Vanguard",
    image: "logos/vanguard.png",
    perks: ("dog", "cat", "mouse"),
    cost: "$400,000 per year",
  ),
  (
    name: "Sentinel",
    image: "logos/sentinel.png",
    perks: ("dog", "cat", "mouse"),
    cost: "$100,000 per year",
  ),
)

#set page(margin: (x: 0.5cm, y: 0.5cm))
#set align(center + top)
#rect(
  image("hero-blue-bg-2.png", fit: "cover", width: 100%, height: 300pt),
  stroke: gradient.linear(rgb(seal-white), rgb(seal-color)),
)
#for tier in tier-data {
  rect(
    height: 15%,
    width: 100%,
    radius: 100%,
    inset: 10pt,
    stroke: gradient.linear(rgb(seal-white), rgb(seal-color)),
    fill: rgb(seal-white),
    align(left + horizon, stack(
      dir: ltr,
      spacing: 10pt,
      circle(
        align(center + horizon, image(
          tier.image,
          width: 180%,
          height: 180%,
          fit: "contain",
        )),
        fill: gradient.linear(rgb("#eeeeee"), rgb(seal-white)),
        stroke: gradient.linear(rgb(seal-white), rgb("#deeeee")),
      ),
      stack(
        dir: ttb,
        spacing: 8pt,
        text(
          tier.name,
          tracking: 1pt,
          weight: "regular",
          size: 20pt,
          fill: rgb(seal-color),
        ),
        text(
          tier.cost,
          tracking: 0pt,
          weight: "thin",
          size: 12pt,
          fill: rgb(seal-color),
        ),
        line(length: 69%, stroke: gradient.linear(
          rgb(seal-color),
          rgb("#eeeeee"),
        )),
        grid(
          row-gutter: 8pt,
          //columns: (33%,33%,),
          ..tier.perks.map(perk => text(
            perk,
            fill: rgb(seal-color),
            weight: 300,
            size: 11pt,
            baseline: 1pt,
          ))
        ),
      ),
    )),
  )
}
