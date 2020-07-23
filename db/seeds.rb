# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Highlights.destroy_all
puts "user + highlight destroyed"

puts "starting seeds"

# user
1.times do 
  new_user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "readtoremember@gmail.com",
    password: "readtoremember")
  puts "user not saved"
    image = URI.open("https://avatars1.githubusercontent.com/u/15158574?s=400&u=323d8c6b203f88a8e1ea6fdf359977e1d7aa79c5&v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
  puts "added user with photo!"

# sources
  10.times do
# 1
    new_source = Source.new(
      title: "21 Lessons for the 21st Century"
      author: "Yuval Noah Harari"
      publishing_year: "2018"
      image = URI.open("")
    )
# 2
    new_source = Source.new(
      title: "Why We Sleep: Unlockin the Power of Sleep and Dreams"
      author: "Matthew Walker"
      publishing_year: "2017"
      image = URI.open("")
    )
# 3
    new_source = Source.new(
      title: "Thinking, Fast and Slow"
      author: "Daniel Kahneman"
      publishing_year: "2011"
      image = URI.open("")
    )
# 4
    new_source = Source.new(
      title: "Permanent Record"
      author: "Edward Snowden"
      publishing_year: "2019"
      image = URI.open("")
    )
# 5
    new_source = Source.new(
      title: "The Uninhabitable Earth: Life After Warming"
      author: "David Wallace-Wells"
      publishing_year: "2019"
      image = URI.open("")
    )
# 6
    new_source = Source.new(
      title: "The Future We Choose: Surviving the Climate Crisis"
      author: "Christiana Figueres, Tom Rivett-Carnac"
      publishing_year: "2020"
      image = URI.open("")
    )
# 7
    new_source = Source.new(
      title: "Invisable Women: Data Bias in a Worlds Designed for Men"
      author: "Caroline Criado Perez, Anna Sak"
      publishing_year: "2019"
      image = URI.open("")
    )
# 8
    new_source = Source.new(
      title: "Why I'm No Loner Talking to Wgite People Abour Race"
      author: "Reni Eddo-Lodge"
      publishing_year: "2017"
      image = URI.open("")
    )
# 9
    new_source = Source.new(
      title: "Exhalation: Stories"
      author: "Ted Chiang"
      publishing_year: "2019"
      image = URI.open("")
    )
# 10
    new_source = Source.new(
      title: "Notes from an Apocalypse: A Personal Hourney to the End of the World and Back"
      author: "Mark O'Connell"
      publishing_year: "2020"
      image = URI.open("")
    )
  end
end
