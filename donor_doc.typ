#let mission_heading = "Our primary purpose is to secure the future of crypto"
#let mission_paragraph = "We work with top security researchers, developers, and founders to build and maintain public goods that benefit everyone. Everyday, we fight for the wellbeing of the ecosystem, not for profit but for the ideals that decentralized technology represents."
#let initiatives = (
  (
    name: "SEAL 911",
    description: "The leading incident response team for crypto, trusted by victims when everything's on the line.",
    image: "logos/seal911.svg",
  ),
  (
    name: "Frameworks",
    description: "An open-source collection of security best practices, curated to help crypto companies enhance their security posture.",
    image: "logos/framework.svg",
  ),
  (
    name: "SEAL Intel",
    description: "The hub for crypto threat intelligence, responsible for identifying, analyzing, and disseminating information about new threat actors and trends.",
    image: "logos/intel.svg",
  ),
  (
    name: "Certifications",
    description: "A common sense certification program for crypto professionals, designed to provide a clear baseline in crypto security.",
    image: "logos/certifications.svg",
  ),
)
#let all-tiers-get = (
  "Cross-promotional opportunities with the leader in crypto security.",
  "Quarterly roundtables to discuss your organization's security needs.",
  "Complementary sponsorship placements for darkMode",
)
#let tier-data = (
  (
    name: "Paladin",
    recommendation: "recommended for market leaders and exchanges",
    image: "logos/paladin.png",
    perks: (
      "8x Membership to SEAL (Paladin Badge)",
      "8x SEAL Assembly Invitation",
      "High Priority Access to SEAL Resources and Support",
    ),
    cost: "$1,000,000 per year",
  ),
  (
    name: "Vanguard",
    recommendation: "recommended for large protocols",
    image: "logos/vanguard.png",
    perks: (
      "4x Membership to SEAL (Vanguard Badge)",
      "4x SEAL Assembly Invitation",
      "Priority Access to SEAL Resources and Support",
    ),
    cost: "$400,000 per year",
  ),
  (
    name: "Sentinel",
    recommendation: "recommended for startups and smaller projects",
    image: "logos/sentinel.png",
    perks: (
      "1x Membership to SEAL (Sentinel Badge)",
      "1x SEAL Assembly Invitation",
      "Access to SEAL Resources and Support",
    ),
    cost: "$100,000 per year",
  ),
)
#let nospace = v(0pt, weak: true)
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


#set align(center + bottom)
#stack(
  image("logos/seal.svg", height: 10%),
  rect(
    inset: 40pt,
    fill: rgb(seal-color),
    width: 100%,
    height: 25%,
    align(horizon, stack(
      spacing: 20pt,
      text(
        mission_heading,
        size: 18pt,
        fill: seal-white,
        tracking: 0.5pt,
        weight: "medium",
      ),
      text(
        mission_paragraph,
        size: 14pt,
        fill: seal-white,
        tracking: 0.5pt,
        weight: "regular",
      ),
    )),
  ),

  align(horizon, rect(
    height: 60%,
    width: 125%,
    inset: 0pt,
    fill: rgb(seal-white),
    grid(
      columns: (40%, 40%),
      column-gutter: 0pt,
      row-gutter: 0pt,
      align: center,
      ..initiatives.map(initiative => rect(
        width: 100%,
        height: 50%,
        inset: 20pt,
        stroke: rgb("#4339db"),
        stack(
          spacing: 20pt,
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



#set page(margin: (x: 0cm, y: 0cm))
#set align(center + top)
#rect(
  inset: 0pt,
  height: 200pt,
  outset: 0pt,
  image("hero-blue-bg-2.png", fit: "cover", width: 100%, height: 200pt),
  stroke: gradient.linear(rgb(seal-white), rgb(seal-color)),
)
#v(0pt, weak: true)
#rect(
  width: 100%,
  outset: 0pt,
  inset: 30pt,
  height: 150pt,
  fill: rgb(seal-white),
  stroke: rgb(seal-white),
  stack(
    align(left + top, text("ALL TIERS", fill: rgb(seal-color))),
    v(15pt),
    align(left + top, stack(spacing: 10pt, ..all-tiers-get.map(perk => text(
      perk,
      fill: rgb(seal-color),
      size: 18pt,
    )))),
  ),
)
#for tier in tier-data {
  rect(
    outset: 0pt,
    height: 15%,
    width: 90%,
    radius: 5%,
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
        stack(
          dir: ltr,
          spacing: 10pt,

          text(
            tier.name,
            tracking: 1pt,
            weight: "regular",
            size: 20pt,
            fill: rgb(seal-color),
          ),
          text(
            tier.recommendation,
            tracking: 0pt,
            weight: "regular",
            size: 12pt,
            fill: rgb(seal-color),
          ),
        ),

        text(
          tier.cost,
          tracking: 0pt,
          weight: "light",
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
