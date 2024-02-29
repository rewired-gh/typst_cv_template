#let conf(
  name: none,
  address: none,
  phone: none,
  email: none,
  info: none,
  doc
) = {
  set page(margin: (x: 40pt, y: 40pt))
  set text(font: "New Computer Modern", size: 12pt)
  set block(spacing: 8pt)

  set document(
    title: "CV",
    author: name,
  )

  show link: underline
  
  set align(center)
  par(text(size: 18pt, weight: "bold", name))
  v(8pt)
  par(address)
  par(stack(
    dir: ltr,
    spacing: 4pt,
    text(phone),
    text("·"),
    text(email)
  ))
  par(info)
  v(4pt)

  set align(start)
  set line(stroke: 0.38pt + luma(20%))
  show heading.where(
    level: 1
  ): it => {
    set text(size: 14pt, weight: "bold")
    v(4pt)
    align(left, smallcaps(it))
    v(-10pt)
    stack(
      dir: ltr,
      spacing: 4pt,
      line(length: 100%),
      line(length: 4pt),
      line(length: 4pt),
      line(length: 4pt),
      line(length: 4pt),
      line(length: 4pt),
    )
    v(4pt)
  }
  show heading.where(
    level: 2
  ): it => {
    box(text(size: 12pt, weight: "semibold", it))
  }

  doc
}

#let cv_block(
  name: none,
  entity: none,
  date: none,
) = par({
  heading(level: 2, name)
  if entity != none {
    ", "
    text(fill: luma(33%), entity)
  }
  h(1fr)
  text(style: "italic", date)
})

#let cv_link(
  url,
) = link(url, text(fill: rgb(20%, 20%, 40%), url))

//// Preview ////

#show: doc => conf(
  name: "Ira B. Lee",
  address: "3923 Grove Street, Bethpage, NY 11714",
  phone: "(+1) 631-772-1793",
  email: "IraBLee@dayrep.com",
  doc,
)

= Education

#cv_block(
  name: "Caliton University of Science and Technology",
  date: "Sep. 2019 ~ Jul. 2020"
)

Typesetting and Slacking Off Bachelor's Degree
#h(1fr)
GPA：114/514

= Awards

#cv_block(
  name: "2019 'Slacking Off Cup' First Prize",
  entity: "Subsidy Fraud Committee",
  date: "June 2019"
)

#lorem(20)

#lorem(20)