# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts'Creating 3 fake users...'
User.create(email:'lauriane@wagon.com', password:'secret')
User.create(email:'perrine@wagon.com', password:'azerty')
User.create(email:'ahmed@wagon.com', password:'123456')
puts 'Creating 100 fake articles...'
100.times do
  article = Article.new(
    name: Faker::Games::Heroes.artifact,
    description: "#{Faker::Hipster.sentence}, #{Faker::Address.city}",
    price: rand(15..95),
    category: Faker::Hipster.word,
    user: User.all.sample
  )
  article.save!
end
puts 'Finished!'
