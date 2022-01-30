# This is where you can create initial data for your app.
require 'faker'

puts 'Creating restaurants...'

Restaurant.destroy_all

20.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    rating: rand(0..5)
  )
  restaurant.save!
end

tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: 'Paris')
tour_d_argent.save!

chez_gladines = Restaurant.new(name: "Chez Gladines", address: 'Marseille')
chez_gladines.save!

puts 'Finished!'
