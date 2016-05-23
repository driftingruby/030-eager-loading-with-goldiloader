# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  blog = Blog.new
  blog.name = Faker::Hacker.say_something_smart
  blog.content = Faker::Hipster.paragraphs(10).each_slice(10).map { |slice| "<p>#{slice.join}</p>"}.join

  (2 + rand(8)).times do
    blog.tag_list.add(Faker::Hacker.noun)
  end
  blog.save!
end
