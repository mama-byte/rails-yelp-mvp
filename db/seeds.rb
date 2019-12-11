# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Sushi Maki',
    address: '1633 Bellevue Ave, Seattle',
    phone_number: '(206)264-0725',
    category: 'japanese'
  },
  {
    name: 'Le Pichet',
    address: '1933 1st Ave, Seattle',
    phone_number: '(206)256-1499',
    category: 'french'
  },
  {
    name: 'Restorante Machiavelli',
    address: '1215 Pine St, Seattle',
    phone_number: '(206)621-7941',
    category: 'italian'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
