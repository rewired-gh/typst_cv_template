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
  name: "华秋",
  phone: "电话：(+86) 13117158822",
  email: "电子邮箱：wangqiang@example.com",
  info: [GitHub：#cv_link("https://github.com/random_username")],
  doc,
)

= 教育经历

#cv_block(
  name: "家里蹲科学与科技大学",
  date: "2019年9月 ～ 2020年7月"
)

排版与摸鱼专业本科
#h(1fr)
全部课程GPA：114/100；核心课程GPA：514/100

= 获奖经历

#cv_block(
  name: "2019年“摸鱼杯”信创学生比赛一等奖",
  entity: "骗补贴教育研究委员会",
  date: "2019年6月"
)

#lorem(20)

#lorem(20)