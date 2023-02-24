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
  email: "Ernesto.Sabato@hotmail.cn",
  password: "123456"
)

user2 = User.create(
  email: "MaryBeard89@gmail.io",
  password: "123456"
)

user3 = User.create(
  email: "Beauviorsate@gmail.net",
  password: "123456"
)

user4 = User.create(
  email: "Madeline.Miller1987@name.io",
  password: "123456"
)

user5 = User.create(
  email: "ElenaFerrante@lila.com",
  password: "123456"
)

user6 = User.create(
  email: "NewcastleTyne@ac.uk",
  password: "123456"
)

user7 = User.create(
  email: "Somerest0924@biz.net",
  password: "123456"
)

user8 = User.create(
  email: "sucrepice@new.io",
  password: "123456"
)

puts "users created."

space1 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "A monumental landmark of the city, our building features amazing architectural elements such as marble columns, breathtaking staircase, glass ceiling and large common areas. As a member you enjoy a professional infrastructure with high-speed Internet, multifunctional photocopiers, elegant meeting rooms, impressive function rooms, coffee bar, free drinks and healthy snacks. A huge playground with pool table, table tennis, mini golf and PlayStation makes it easy to meet colleagues and socialize.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user1.id
)

space2 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "Your new office can soon be located right in within the city centre. Our Mindspace workspace offers first class office space for entrepreneurs and freelancers. You can choose between private offices, coworking and lounge memberships. As in our other locations, you have a bicycle parking space, 24-hour access and a pet friendly office. The building is also equipped for events and cleaning service is available. We also offer fully furnished offices here.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user2.id
)

space3 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "Welcoming members across a range of industries, our office space on 37 Avenue Trudaine delivers a sought-after address and unparalleled amenities. Onsite staff, fully stocked printing stations, and soundproof phone booths streamline your workday—plus, a dog-friendly environment keeps things light. Convenient parking, bike storage, and access to the M2 and M12 make commuting a breeze no matter where you’re coming from. After hours, the surrounding streets of South Pigalle provide plenty of options for entertaining clients or celebrating team wins. Schedule your visit to WeWork's shared office space in the 9th arrondissement today to give your business the home it deserves.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user3.id
)

space4 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "Perfectly poised for success on the corner of Rue la Fayette, our Chaussée-d'Antin coworking space will take your company to new heights. The entire eight-story building is dedicated to WeWork, featuring art-filled lounges, modern conference rooms, and sleek private offices. This central location is ideal for commuters—the Chaussée d'Antin La Fayette Metro Station and the Auber RER Station are within walking distance—and makes it easy to meet with clients and investors, too. After work, head to dinner at Hôtel Banke, or browse the surrounding shops and espresso bars. The 9th Arrondissement business scene coalesces with the groove of South Pigalle and the beauty of Opéra at 20 Bis Rue la Fayette—all that's missing is you. Join today.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user3.id
)

space5 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "Take your business to new heights by basing it in Spaces Etoile, with its stunning views of the Arc de Triomphe. You're ideally located next to Place Charles de Gaulle, often still called Place de l'Étoile or Square of the Star, after the 12 avenues which radiate out of it. You'll feel at the heart of the action as you plug into an inspiring and energising business community. Whether you want private, shared or virtual offices in Paris, or to hire a meeting room, you'll find the flexible space you need here.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user4.id
)

space6 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "Located in Rue de Londres, Spaces Saint Lazare welcomes you in the heart of one of the main business districts of Paris. These flexible workspaces are of modern design in one of the best locations, perfectly connected to the western suburbs and to Normandy.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user4.id
)

space7 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "The multitude of coffee shops, restaurants and boutiques gives a new dynamic flavour to the area known in the 19th century as the heart of the 'vie parisienne'. The building is freshly renewed and equipped with modern features. Nice terraces in the upper floors offer a stunning views of Paris. A nice glass roof and a floor duplex give character and unique appearance to the building. It offers private offices, collaborative and recreational areas as well as a cosy reception and a team to support all customers.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user4.id
)

space8 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "Spaces Les Halles might just be one of the best locations for your business to grow and to get inspired by, with its central Parisian location that puts your business within direct sight of the Forum des Halles. Located in a stunning 19th century-building, the building is timeless on the outside but fully refurbished to match your needs on the inside - allowing the architecture to offer both form and function. Just walking through the door feels exciting with the building’s epic stone arches and clean white limestone features - sure to spark conversation with your business partners.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user2.id
)

space9 = Space.create!(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  contact: Faker::Internet.email,
  description: "The West part of Boulogne-Billancourt and the Île Seguin area are becoming an attractive pole for businesses in the Western suburbs of Île de France.  At this location we offer private office space, flexible workspace and meeting rooms to suit the needs of your business as it grows. Change the way you work  by renting our creative, flexible work spaces.",
  price: Faker::Number.decimal(l_digits: 2),
  user_id: user1.id
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
  total_price: 156,
  space_id: space1.id,
  user_id: user5.id
)

Booking.create!(
  start_date: "20230128",
  end_date: "20230202",
  total_price: 279,
  space_id: space2.id,
  user_id: user6.id
)

Booking.create!(
  start_date: "20230405",
  end_date: "20230427",
  total_price: 88,
  space_id: space3.id,
  user_id: user7.id
)

Booking.create!(
  start_date: "20230208",
  end_date: "20230219",
  total_price: 199,
  space_id: space4.id,
  user_id: user8.id
)

Booking.create!(
  start_date: "20230208",
  end_date: "20230615",
  total_price: 1089,
  space_id: space5.id,
  user_id: user5.id
)

Booking.create!(
  start_date: "20230208",
  end_date: "20230301",
  total_price: 244,
  space_id: space6.id,
  user_id: user8.id
)

Booking.create!(
  start_date: "20230208",
  end_date: "20230219",
  total_price: 156,
  space_id: space7.id,
  user_id: user7.id
)

Booking.create!(
  start_date: "20230417",
  end_date: "20230628",
  total_price: 478,
  space_id: space8.id,
  user_id: user6.id
)

Booking.create!(
  start_date: "20230611",
  end_date: "20230823",
  total_price: 432,
  space_id: space9.id,
  user_id: user8.id
)

puts "Bookings created"
