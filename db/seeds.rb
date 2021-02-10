# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating 10 new flats..."

10.times do
  flat = Flat.new(
    name: Faker::Movie.title,
    address: Faker::Address.street_address,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus massa nisi, malesuada at ligula eu.",
    price_per_night: (0..300).to_a.sample,
    number_of_guests: Flat::GUESTS.sample
    )
  flat.save!
  puts "Flat #{flat.name} was created."
end

puts "10 flats were successfully created!"
