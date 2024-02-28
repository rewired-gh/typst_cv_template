#let conf(
  name: none,
  address: none,
  phone: none,
  email: none,
  info: none,
  doc
) = {
  set page(margin: (x: 40pt, y: 40pt))
  set text(font: ("IBM Plex Serif", "Source Han Serif SC", "SimSun", "Songti SC"), size: 12pt)
  set block(spacing: 12pt)

  show link: underline
  
  set align(center)
  par(text(size: 18pt, weight: "semibold", name))
  v(8pt)
  par(address)
  par(stack(
    dir: ltr,
    spacing: 8pt,
    text(phone),
    text("·"),
    text(email)
  ))
  par(info)
  v(4pt)

  set align(start)
  set line(stroke: 0.38pt + luma(20%))
  show heading: it => {
    set text(size: 14pt, weight: "semibold")
    v(4pt)
    align(left, text(it))
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
    v(8pt)
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
    "，"
    text(fill: luma(33%), entity)
  }
  h(1fr)
  date
})

#let cv_link(
  url,
) = link(url, text(fill: rgb(20%, 20%, 40%), url))

//// Preview ////

#show: doc => conf(
  name: "春华秋实",
  address: "地址：广东省深圳市",
  phone: "电话：(+86) 13342339988",
  email: "邮箱：hello@example.com",
  doc,
)

= 教育经历

#cv_block(
  name: "家里蹲职业学院",
  date: "2022年6月 ～ 2023年4月"
)

计算机科学与技术专业本科在读

= 工作经历

#cv_block(
  name: "某实习",
  entity: "搞钱快责任有限公司",
  date: "Jan. 2022 ~ Apr. 2023"
)

#lorem(20)

#lorem(20)