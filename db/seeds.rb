# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning the database"
Booking.delete_all
Space.delete_all
User.delete_all

puts 'Seed: Seeding...'

user1 = User.create(
  email: Faker::Internet.email,
  password: "123456"
)

user2 = User.create(
  email: Faker::Internet.email,
  password: "123456"
)

puts "users created."

space1 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: Faker::Lorem.sentence(word_count: 350, supplemental: true, random_words_to_add: 10),
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user1.id
)

space2 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: Faker::Lorem.sentence(word_count: 350, supplemental: true, random_words_to_add: 10),
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user2.id
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
Booking.create!(
  start_date: "20230208",
  end_date: "20230219",
  total_price: Faker::Number.non_zero_digit,
  space_id: space1.id,
  user_id: user1.id
)

Booking.create!(
  start_date: "20230128",
  end_date: "20230202",
  total_price: Faker::Number.non_zero_digit,
  space_id: space2.id,
  user_id: user2.id
)

puts "Bookings created"
