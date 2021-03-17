
3.times do |topic|
  Topic.create!(
  	title: "topic #{topic}"
  	)
end


5.times do |blog|
 Blog.create!(
 	title: "my Blog Post #{blog}",
 	body: "The Tennessee Titans are at a 
 	point that is more pivotal than it might appear.",
 	topic_id: Topic.last.id
 	)	
end	

5.times do |skill|
 Skill.create!(
 	title: "Rails #{skill}",
 	percent_utilized: 10
 	)	
end	

5.times do |portfolio|
 Portfolio.create!(
 	title: "Portfolio title #{portfolio}",
 	subtitle: "learning rails app",
 	body: "The Packers should just be 
 	pleased league-MVP Aaron Rodgers is their quarterback.",
 	main_image: "https://place-hold.it/400x300",
 	thumb_image: "https://place-hold.it/300x200"
 	)	
end	

1.times do |portfolio|
 Portfolio.create!(
 	title: "Portfolio title #{portfolio}",
 	subtitle: "Angular",
 	body: "The Packers should just be 
 	pleased league-MVP Aaron Rodgers is their quarterback.",
 	main_image: "https://place-hold.it/400x300",
 	thumb_image: "https://place-hold.it/300x200"
 	)	
end	