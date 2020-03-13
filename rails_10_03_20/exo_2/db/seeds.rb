# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

5.times do
  Category.create(name: Faker::Name.name)
end

10.times do
  Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraph, user_id: rand(1..10), category_id: rand(1..5), commentaire_id: rand(1..15))
end
15.times do
  Commentaire.create(content: Faker::Lorem.paragraph)
end
15.times do
  Like.create(user_id: rand(1..10), article_id: rand(1..10))
end
