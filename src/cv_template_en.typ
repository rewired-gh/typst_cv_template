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
  show heading: it => {
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
  
  doc
}

#let cv_block(
  name: none,
  entity: none,
  date: none,
) = par({
  text(weight: "semibold", name)
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
  name: "Kariton College",
  date: "Jan. 2022 ~ Apr. 2023"
)

Undergraduate student majored in Computer Science


= Experience

#cv_block(
  name: "Some Internship",
  entity: "Make Money Inc.",
  date: "Jan. 2022 ~ Apr. 2023"
)

#lorem(20)

#lorem(20)