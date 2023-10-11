# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database..."
Cottage.destroy_all

puts "Database cleaned"

require "open-uri"

Cottage.create!([
  {
    name: 'Charming Cottage in Cornwall with Garden & Jacuzzi',
    address: 'Cornwall, England',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 90,
    number_of_guests: 6,
  },
  {
    name: 'Lovely Cottage in Hemswell with Private Parking',
    address: 'Hemswell, Lincolnshire',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 86,
    number_of_guests: 5
  },
  {
    name: 'Wonderful Cottage in Bampton with Barbecue & Garden',
    address: 'Bampton, Oxfordshire',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 75,
    number_of_guests: 5
  },
  {
    name: 'Nice Lodge in Great Busby with Sauna',
    address: 'Great Busby, North Yorkshire',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 83,
    number_of_guests: 4
  }])
