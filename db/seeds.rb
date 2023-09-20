# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cottage.destroy_all

Cottage.create!([
  {
    name: 'Charming Cottage in Cornwall with Garden & Jacuzzi',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 90,
    number_of_guests: 6
  },
  {
    name: 'Lovely Cottage in Hemswell with Private Parking',
    address: 'Hemswell',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 75,
    number_of_guests: 5
  },
  {
    name: 'Wonderful Cottage in Bampton with Barbecue & Garden',
    address: 'Bampton',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 75,
    number_of_guests: 5
  },
  {
    name: 'Nice Lodge in Great Busby with Sauna',
    address: 'Great Busby, England',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price_per_night: 83,
    number_of_guests: 4
  }])
