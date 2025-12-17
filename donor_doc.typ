#let off-white = rgb("#fefefe")

// Theme (keeps your existing color and text content)
#let background = rgb("#f3f6ff")
#let surface = off-white
#let ink = rgb("#0b1020")
#let muted = rgb("#475569")
#let border = rgb("#d7def5")
#let accent = rgb("#5b8cff")

#set page(
  margin: (x: 20mm, top: 18mm, bottom: 20mm),
  fill: background,
)

#set text(
  size: 11pt,
  // If you're using the Snap build of Typst on Ubuntu, pass:
  // `--font-path tt-hoves-pro/ttf` (see README) so this family is discoverable.
  font: ("TT Hoves Pro", "DejaVu Sans"),
  fill: ink,
)

#set par(leading: 1.35em)
#set heading(outlined: false)

#show: doc => [
  #rect(width: 100%, height: 3pt, fill: accent, radius: 99pt)
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
  #block(
    width: 100%,
    fill: none,
  )[
    #text(size: 30pt, weight: 750, tracking: 0.25pt)[#it.body]
    #v(8pt)
    #rect(width: 56pt, height: 2.5pt, fill: accent, radius: 99pt)
  ]
  #v(10pt)
]

#show heading.where(level: 2): it => [
  #v(8pt)
  #block(
    width: 100%,
    fill: none,
  )[
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
