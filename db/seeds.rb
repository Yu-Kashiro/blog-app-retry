# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create!(email: 'test3@example.com', password: 'password')
emily = User.create!(email: 'test4@example.com', password: 'password')

# john = User.first
# emily = User.second

5.times do
  john.articles.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.sentence(word_count: 100)
  )
end
5.times do
  emily.articles.create!(
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.sentence(word_count: 100)
  )
end