
# Portfolio.create(id:1,name: "todo-vue.js",text:"It is build on top of the React JS, with styledComponents and GSAP for smooth scrolling animations.",url:"https://rails-api-curriculum-jam.herokuapp.com/",github: "https://github.com/JAMChannel/rails-api-curriculum-jam")

5.times do
  portfolio = Portfolio.create(
    name: Faker::Books::CultureSeries.book,
    text: Faker::JapaneseMedia::OnePiece.quote,
    url:"https://rails-api-curriculum-jam.herokuapp.com/",
    github: "https://github.com/JAMChannel/rails-api-curriculum-jam"
  )
  puts "\"#{portfolio.name}\" を作成した！"
end

[
  ["Rails"],
  ["React"],
  ["Python"],
  ["vue.js"],
  ["JavaScript"],
].each do |tagname|
  Tag.create!({ tagname: tagname })
end

[
  [1, 1],
  [2, 2],
  [3, 3],
  [4, 4],
  [5, 5],
].each do |portfolio_id, tag_id|
  PortfolioTag.create!(
    { portfolio_id: portfolio_id, tag_id: tag_id}
  )
end