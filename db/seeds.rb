# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying flats..."
Flat.destroy_all
puts "creating 10 flats..."
10.times do
  Flat.create(
    name: Faker::Address.city,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(100..999),
    number_of_guests: rand(2..6)
  )
end
puts "Seeding complete 🌱"
