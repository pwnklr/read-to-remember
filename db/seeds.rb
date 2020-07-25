# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
puts "user + highlight destroyed"

puts "starting seeds"

# user
  new_user = User.new(
    email: "readtoremember@gmail.com",
    password: "readtoremember")
  puts "user not saved"
    # image = URI.open("https://avatars1.githubusercontent.com/u/15158574?s=400&u=323d8c6b203f88a8e1ea6fdf359977e1d7aa79c5&v=4")
    # new_user.photo.attach(io: image, filename: "#{new_user.first_name}", content_type: 'image/png')
    # new_user.save!
  puts "added user with photo!"

# books
# 1 book
  author_1 = Author.create(name: "Yuval Noah Harari")
  new_book = Source.new(
      title: "21 Lessons for the 21st Century",
      publishing_year: "2018",
      category: "book")
      image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532075/1_hh6viq.jpg")
      new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_1
  new_book.save!

# 2 book
  author_2 = Author.create(name: "Matthew Walker")
  new_book = Source.new(
    title: "Why We Sleep: Unlockin the Power of Sleep and Dreams",
    publishing_year: "2017",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532663/2_vqy5ex.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_2

# 3 book
  author_3 = Author.create(name: "Daniel Kahneman")
  new_book = Source.new(
    title: "Thinking, Fast and Slow",
    publishing_year: "2011",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532077/3_d78iet.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_3

# 4 book
  author_4 = Author.create(name: "Edward Snowden")
  new_book = Source.new(
    title: "Permanent Record",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532092/4_cw0olp.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_4

# 5 book
  author_5 = Author.create(name: "David Wallace-Wells")
  new_book = Source.new(
    title: "The Uninhabitable Earth: Life After Warming",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532079/5_tg2jcq.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_5

# 6 book
  author_6 = Author.create(name: "Christiana Figueres, Tom Rivett-Carnac")
  new_book = Source.new(
    title: "The Future We Choose: Surviving the Climate Crisis",
    publishing_year: "2020",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532083/6_tukwno.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_6

# 7 book
  author_7 = Author.create(name: "Caroline Criado Perez, Anna Sak")
  new_book = Source.new(
    title: "Invisible Women: Data Bias in a Worlds Designed for Men",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532090/7_giwjxu.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_7

# 8 book
  author_8 = Author.create(name: "Reni Eddo-Lodge")
  new_book = Source.new(
    title: "Why I'm No Loner Talking to White People Abour Race",
    publishing_year: "2017",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532090/8_iagkos.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_8

# 9 book
  author_9 = Author.create(name: "Ted Chiang")
  new_book = Source.new(
    title: "Exhalation: Stories",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532083/9_tdg7kf.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_9

# 10 book
  author_10 = Author.create(name: "Mark O'Connell")
  new_book = Source.new(
    title: "Notes from an Apocalypse: A Personal Hourney to the End of the World and Back",
    publishing_year: "2020",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532094/10_wevelj.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.save!
  new_book.author = author_10

# articles
# 1 article
  author_11 = Author.create(name: "Kate Hollowood")
  new_article = Source.new(
      title: "In praise of doing nothing: How to turn boredom into brilliant ideas",
      publishing_year: "2019",
      category: "article")
      image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678356/1.1_vaemxa.png")
      new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

  new_article.author = author_1
  new_article.save!

  # 2 article
  author_12 = Author.create(name: "Naresh Ramchandani")
  new_article = Source.new(
    title: "The climate crisis is daunting, but as a creative professional, there’s much you can do",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678354/2.2_ud77ra.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_2
    new_article.save!

  # 3 article
  author_13 = Author.create(name: "Lucy Bourton")
  new_article = Source.new(
    title: "The system of learning new creative skills is broken – so how can it evolve?",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678559/3.3_zfzktq.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_3
    new_article.save!

  # 4 article
  author_14 = Author.create(name: "Ed Baldwin")
  new_article = Source.new(
    title: "Busy is the New Stupid",
    publishing_year: "2016",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678263/4.4_mgmj9a.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_4
    new_article.save!

  # 5 article
  author_15 = Author.create(name: "Katya Andresen")
  new_article = Source.new(
    title: "What's missing in leadership is what's missing in ourselves",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678266/5.5_kpynop.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_5
    new_article.save!

  # 6 article
  author_6 = Author.create(name: "Charlotte Alter, Suyin Haynes, Justin Worland")
  new_article = Source.new(
    title: "Time 2019 Person of the Year: Greta Thunberg",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678345/6.6_dqhwii.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_6
    new_article.save!

  # 7 article
  author_7 = Author.create(name: "Eddie S. Glaude, Jr.")
  new_article = Source.new(
    title: "The History That James Baldwin Wanted America to See",
    publishing_year: "2020",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678314/7.7_sidtba.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_7
    new_article.save!

  # 8 article
  author_8 = Author.create(name: "Lauren Martin")
  new_article = Source.new(
    title: "Patti Smith’s Advice On Following The Road Less Traveled",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678278/7.7_tnhw34.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_8
    new_article.save!

  # 9 article
  author_9 = Author.create(name: "Laura M. Halson")
  new_article = Source.new(
    title: "Are We Living in a Post-Happines World?",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678282/9.9_jqb6hv.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_9
    new_article.save!

  # 10 article
  author_10 = Author.create(name: "Lauren Martin")
  new_article = Source.new(
    title: "Bethenny Frankel: 14 Rules For Getting Everything You Want",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678288/10.10_r3o5uy.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_10
    new_article.save!

#highlights
# 1 highlight
  highlight_1 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "20",
    favorite: true)

    new_highlight.tag_list ="politics"
    new_highlight.source = 1
    new_highlight.user = 1
    new_highlight.save!

# 2 highlight
  highlight_2 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "210",
    favorite: true)
    
    new_highlight.tag_list ="feminism"
    new_highlight.source = 5
    new_highlight.user = 1
    new_highlight.save!

# 3 highlight
highlight_3 = Highlight.new(
  content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  page: "89",
  favorite: true)
  
  new_highlight.tag_list ="politics"
  new_highlight.source = 9
  new_highlight.user = 1
  new_highlight.save!

# 4 highlight
highlight_4 = Highlight.new(
  content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  page: "2",
  favorite: false)
  
  new_highlight.tag_list ="biography"
  new_highlight.source = 11
  new_highlight.user = 1
  new_highlight.save!

# 5 highlight
  highlight_5 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "210",
    favorite: true)
    
    new_highlight.tag_list ="race"
    new_highlight.source = 7
    new_highlight.user = 1
    new_highlight.save!

# 6 highlight
  highlight_6 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "14",
    favorite: true)
    
    new_highlight.tag_list ="climat"
    new_highlight.source = 8
    new_highlight.user = 1
    new_highlight.save!

# 7 highlight
  highlight_7 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "165",
    favorite: false)
    
    new_highlight.tag_list ="science"
    new_highlight.source = 15
    new_highlight.user = 1
    new_highlight.save!

# 8 highlight
  highlight_8 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "1",
    favorite: true)
    
    new_highlight.tag_list ="politics"
    new_highlight.source = 19
    new_highlight.user = 1
    new_highlight.save!

# 9 highlight
  highlight_9 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "4",
    favorite: true)
    
    new_highlight.tag_list ="psychology"
    new_highlight.source = 11
    new_highlight.user = 1
    new_highlight.save!

# 10 highlight
  highlight_10 = Highlight.new(
    content: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    page: "10",
    favorite: false)
    
    new_highlight.tag_list ="sociology"
    new_highlight.source = 7
    new_highlight.user = 1
    new_highlight.save!

# <--- add, once models are created!
# class Article < ApplicationRecord
#   has_one_attached :photo
#  end