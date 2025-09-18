#import "@preview/polylux:0.4.0": *
#import "@preview/fontawesome:0.1.0": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  // footer: [Optional Footnote]
)

#set text(font: "Fira Sans", weight: 350, size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 200)
#set par(justify: true)

#set quote(block: true)
#show quote: set align(left)
#show quote: set pad(x: 2em, y: -0.8em)

#set raw(tab-size: 4)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 1em,
  radius: 0.7em,
  width: 100%,
)

#show bibliography: set text(size: 0.8em)
#show footnote.entry: it => {
  block(inset: (x: 2em, y: 0.1em))[#text(size: 0.75em)[#it.note.body]]
}

#let fcite(clabel) = {
  footnote(cite(form: "full", label(clabel)))
}

#let author = block(inset: 0.1em)[
  #table(inset: 0.5em, stroke: none, columns: (auto, 4fr),  align: (left, left),
    [#alert[*Manuele Pasini*]], [`manuele.pasini@unibo.it`],
    // [Author 2], [`author2@mail.com`],
    // [Author 3], [`author3@mail.com`],
  )
  #place(right, dy:-1.5em)[
    #figure(image("images/disi.svg", width:40%))
  ]
]

#title-slide(
  title: "Crash Course on Software Development and Computer Architectures",
  subtitle: "Digital Transformation Management @ 2025",
  author: author,
  // date: datetime.today().display("[day] [month repr:long] [year]"),
)

// #new-section-slide("Slide section 1")

#slide(title: "Who am I?")[

  - Bachelor and Master Degree in #alert[Computer Science and Engineering] at University of Bologna
  - Currently #alert[PhD Student] in Computer Science and Engineering at University of Bologna
  - #alert[Teaching tutor] for data-related stuff in the DTM master course
  - If you have any question write me at: `manuele.pasini@unibo.it`

]


#slide(title: "Why this course?")[
  - In the first year you'll have a lot of #alert[CS courses] (programming and computer architectures, OS, cybersecurity, DB, ...)
  - This crash course #alert[is NOT a replacement] for those courses
  - This crash course have been conceived (mainly) for students with a business background
    - It is also a good refresher for those with a technological background
]

#slide(title: "Outline (tentative)")[
  - #alert[Lesson 01]: Computer Architectures and Operating Systems
  - #alert[Lesson 02]: Intro to Programming Languages and Sofware Development 
  - #alert[Lesson 03]: Tools for Sofware Development 
]

#slide(title: "When and where?")[
  - Tuesday 23/09, Room 2.5, Time: 2 pm - 5 pm.
  - Friday 26/09, Room 2.13, Time: 11 am - 14 pm.
  - Friday 26/09, Room 3.3, Time: 15 pm - 18 pm.
]

#slide(title: "Where can I find the slides?")[
  #alert[Disclaimer]: those slides were entirely made by Davide Domini (`davide.domini@unibo.it`) and Guido Borghi.

  You can find #alert[all the slides and the code] on #alert[GitHub] (of course we will see what GitHub is, in the meanwhile think of it as one big shared folder).
  #alert[https://tinyurl.com/crashcoursedtm]
  #figure(image("images/qr.svg", width: 30%))

]