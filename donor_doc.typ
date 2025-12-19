#set page(
  paper: "us-letter",
  margin: 0pt,
)

#set text(
  font: ("TT Hoves Pro"),
  size: 11pt,
)

// Page 1
#page(
  margin: 10pt,
)[
  // Top third with colored background
  #block(
    width: 100%,
    height: 33.33%,
    fill: rgb("#4339db"),
    inset: 40pt,
  )[
    #set text(fill: rgb("#fefefe"), size: 24pt, weight: "bold")
    #align(center + horizon)[
      Welcome to Our Platform
    ]
  ]

  // Bottom 2/3 with 2x2 grid
  #block(
    width: 100%,
    height: 66.67%,
    inset: 40pt,
  )[
    #grid(
      columns: (1fr, 1fr),
      rows: (1fr, 1fr),
      gutter: 20pt,

      // Top-left cell
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 20pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Section 1]
          #v(10pt)
          #text(size: 11pt)[
            This is the first section with important information about our services and offerings.
          ]
        ]
      ],

      // Top-right cell
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 20pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Section 2]
          #v(10pt)
          #text(size: 11pt)[
            This is the second section highlighting key features and benefits for our users.
          ]
        ]
      ],

      // Bottom-left cell
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 20pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Section 3]
          #v(10pt)
          #text(size: 11pt)[
            This is the third section describing our commitment to excellence and quality.
          ]
        ]
      ],

      // Bottom-right cell
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 20pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Section 4]
          #v(10pt)
          #text(size: 11pt)[
            This is the fourth section with additional details and contact information.
          ]
        ]
      ],
    )
  ]
]

// Page 2
#page(
  margin: 0pt,
)[
  #v(60pt) // Top spacing

  #block(
    width: 100%,
    inset: (left: 60pt, right: 60pt),
  )[
    #grid(
      columns: (1fr,),
      rows: (1fr, 1fr, 1fr),
      gutter: 20pt,

      // First row
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 30pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Row 1]
          #v(10pt)
          #text(size: 11pt)[
            This is the first row of the second page, containing detailed information about our primary objectives and mission statement.
          ]
        ]
      ],

      // Second row
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 30pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Row 2]
          #v(10pt)
          #text(size: 11pt)[
            This is the second row, showcasing our achievements and the value we bring to our community and stakeholders.
          ]
        ]
      ],

      // Third row
      block(
        width: 100%,
        height: 100%,
        stroke: 2pt + rgb("#4339db"),
        inset: 30pt,
      )[
        #set text(fill: rgb("#4339db"))
        #align(center + horizon)[
          #text(size: 16pt, weight: "bold")[Row 3]
          #v(10pt)
          #text(size: 11pt)[
            This is the third row, providing closing remarks and future directions for continued growth and innovation.
          ]
        ]
      ],
    )
  ]

  #v(60pt) // Bottom spacing
]
