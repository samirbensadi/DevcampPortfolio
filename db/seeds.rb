# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end


10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}", 
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius mi libero, id bibendum metus laoreet nec. Etiam commodo tempor risus, vitae mattis erat faucibus nec. Nulla bibendum sapien vitae libero congue, at elementum metus finibus. Donec rutrum rhoncus tellus vel sollicitudin. Curabitur elementum at sem eget pretium. Aenean varius risus ac libero elementum, et blandit lectus tempor. Ut ultrices erat quis dolor pretium mattis. Sed et odio id orci egestas suscipit.",
        topic_id: Topic.last.id 
    )
end

puts "10 blog post created"

5.times do |skill|
	Skill.create!(
        title: "Rails #{skill}", 
        percent_utilized: 15
        
		)
end

puts "5 skills created"


6.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}", 
		subtitle: "Ruby on Rails", 
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate sollicitudin luctus. Nam sit amet tempor est. Morbi in urna mollis, aliquam arcu ac, posuere tortor. Nulla ut lorem sem. Proin vel condimentum mauris. Nam efficitur sed orci nec vehicula. Sed dignissim mollis risus, vitae pellentesque enim ultrices a. Duis finibus orci sit amet tortor interdum, nec egestas neque eleifend. Pellentesque tortor augue, dictum vel bibendum sed, egestas nec erat. Vivamus mollis magna eu tempus tincidunt. Vivamus pellentesque sem justo, ut tincidunt elit eleifend nec. Mauris aliquet eros sit amet odio rutrum condimentum." , 
		main_image: "http://via.placeholder.com/600x400", 
		thumb_image: "http://via.placeholder.com/350x200" 
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular", 
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate sollicitudin luctus. Nam sit amet tempor est. Morbi in urna mollis, aliquam arcu ac, posuere tortor. Nulla ut lorem sem. Proin vel condimentum mauris. Nam efficitur sed orci nec vehicula. Sed dignissim mollis risus, vitae pellentesque enim ultrices a. Duis finibus orci sit amet tortor interdum, nec egestas neque eleifend. Pellentesque tortor augue, dictum vel bibendum sed, egestas nec erat. Vivamus mollis magna eu tempus tincidunt. Vivamus pellentesque sem justo, ut tincidunt elit eleifend nec. Mauris aliquet eros sit amet odio rutrum condimentum." , 
		main_image: "http://via.placeholder.com/600x400", 
		thumb_image: "http://via.placeholder.com/350x200" 
		)
end

puts "9 portfolios items created"

3.times do |technology|
  Portfolio.last.technologies.create!(name: "Technology #{technology}"
  )
end

puts "3 technologies"
