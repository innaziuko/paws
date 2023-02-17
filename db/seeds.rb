# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning the database"

user_1 = User.create(
  email: Faker::Internet.email,
  password: "123456"
)

user_2 = User.create(
  email: Faker::Internet.email,
  password: "123456"
)

puts "users created."

Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: Faker::Lorem.sentence(word_count: 350, supplemental: true, random_words_to_add: 10),
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user_1.id
)

Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: Faker::Lorem.sentence(word_count: 350, supplemental: true, random_words_to_add: 10),
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user_2.id
)

puts "Spaces created."

# 50.times do
#   bookings = Booking.create(
#     start_date: Faker::Date.in_date_period,
#     end_date: Faker::Date.in_date_period,
#     total_price: Faker::Number.decimal(l_digits: 2)
#   )

#   puts "Booking with id: #{bookings.id} have been created."
# end
