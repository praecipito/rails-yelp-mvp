# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"}
dish = {name: "Dish", address: "7 Boundary St, NYC", category: "chinese"}
pizza_west =  {name: "Pizza West", address: "56A Shoreditch High St, NYC", category: "french"}
room = {name: "Room", address: "7 Boundary St, Dublin", phone_number: "03132422767", category: "belgian"}

[dishoom, pizza_east, dish, pizza_west, room].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
