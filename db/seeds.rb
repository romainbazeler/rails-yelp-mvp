# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "514 514 514", category: "Indian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "438 438 438", category: "Italian" }
pastaga =  { name: "Pastaga", address: "6389 St Laurent Blvd", phone_number: "(438) 381-6389", category: "Italian" }
cafe_cubano_montreal =  { name: "Café Cubano Montreal", address: "168 Rue Beaubien E", phone_number: " (514) 995-4180", category: "Latino" }
ile_flottante =  { name: "Ile Flottante", address: "176 Saint Viateur West Street", phone_number: "(514) 278-6854", category: "French" }


[ dishoom, pizza_east, pastaga, cafe_cubano_montreal, ile_flottante ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"