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


dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "Japanese", phone_number: 555555 }
from_hanoi =  { name: "From Hanoi", address: "50 Hemanstrasse, Berlin 12053", category: "Vietnamese", phone_number: 1546768 }
don_pablo = { name: "Don Pablo", address: "8 Entr Rios, London E2 7JE", category: "Mexican", phone_number: 545667865 }
mi_barrio =  { name: "Mi Barrio", address: "30 Karl-Max, Berlin 12053", category: "Mediterranean", phone_number: 967856565 }
el_asador = { name: "El Asador", address: "7 Cabildo, Buenos Aires E2 7JE", category: "Argentinian", phone_number: 78678678 }

[ dishoom, from_hanoi, don_pablo, mi_barrio, el_asador ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
