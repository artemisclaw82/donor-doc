#let off-white = rgb("#fefefe")
#let seal-blue = rgb("#4339db")

// Page 2 theme (keeps things readable)
#let background = rgb("#f3f6ff")
#let surface = off-white
#let ink = rgb("#0b1020")
#let muted = rgb("#475569")
#let border = rgb("#d7def5")

#set text(
  size: 11pt,
  // If you're using the Snap build of Typst on Ubuntu, pass:
  // `--font-path tt-hoves-pro/ttf` (see README) so this family is discoverable.
  font: ("TT Hoves Pro", "DejaVu Sans"),
  fill: ink,
)

#set par(leading: 1.35em)
#set heading(outlined: false)

#let cover-tile(img, label) = {
  let img-size = 22mm
  grid(
    columns: (auto, 1fr),
    column-gutter: 12pt,
    align: (left, middle),
  )[
    block(
      width: img-size,
      height: img-size,
      fill: white,
      stroke: (paint: seal-blue, thickness: 1.5pt),
      radius: 7pt,
      inset: 0pt,
    )[
      if img == none {
        align(center + middle)[
          text(size: 9pt, fill: seal-blue, weight: 650, tracking: 0.2pt)[Add image]
        ]
      } else {
        image(img, width: img-size, height: img-size, fit: "cover")
      }
    ]

    text(size: 12pt, fill: seal-blue, weight: 650)[#label]
  ]
}

// --- Page 1 (cover) ---
#set page(margin: 0pt, fill: white)

#layout(size => {
  let w = size.width
  let h = size.height
  let top-h = h * 0.333
  let bottom-h = h * 0.5

  stack(
    dir: ttb,
  )[
    // Top 1/3: seal-blue with centered text
    block(width: w, height: top-h, fill: seal-blue)[
      align(center + middle)[
        text(size: 30pt, fill: white, weight: 750)[Document Title]
        v(6pt)
        text(size: 12pt, fill: white, weight: 500)[Centered subtitle / tagline]
      ]
    ]

    // Middle spacer (keeps bottom half anchored visually)
    block(width: w, height: h - top-h - bottom-h, fill: white)[]

    // Bottom half: white background split into 4 equal areas
    block(width: w, height: bottom-h, fill: white, inset: 20mm)[
      grid(
        columns: (1fr, 1fr),
        rows: (1fr, 1fr),
        column-gutter: 18pt,
        row-gutter: 18pt,
      )[
        cover-tile("paladin.png", [Paladin])
        cover-tile("sentinel.png", [Sentinel])
        cover-tile("vanguard.png", [Vanguard])
        cover-tile("paladin.png", [Fourth item])
      ]
    ]
  ]
})

#pagebreak()

// --- Page 2 (content) ---
#set page(
  margin: (x: 20mm, top: 18mm, bottom: 20mm),
  fill: background,
)

#show: doc => [
  #rect(width: 100%, height: 3pt, fill: seal-blue, radius: 99pt)
  #v(12pt)
  #block(
    width: 100%,
    fill: surface,
    stroke: (paint: border, thickness: 0.8pt),
    radius: 14pt,
    inset: 18pt,
  )[#doc]
]

#show heading.where(level: 1): it => [
  #block(width: 100%)[
    #text(size: 30pt, weight: 750, tracking: 0.25pt)[#it.body]
    #v(8pt)
    #rect(width: 56pt, height: 2.5pt, fill: seal-blue, radius: 99pt)
  ]
  #v(10pt)
]

#show heading.where(level: 2): it => [
  #v(8pt)
  #block(width: 100%)[
    #text(size: 12pt, weight: 650, fill: muted, tracking: 1pt)[#it.body]
    #v(8pt)
    #rect(width: 100%, height: 1pt, fill: border)
  ]
  #v(10pt)
]

= Document Title

This is your Typst document. You can add content here.

== Section

Add your content here.
