# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "57687878", category: "italian")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "57677878", category: "japanese")
puts "Created Pizza East"
Restaurant.create!(name: "Happy Rajah", address: "Royal Road Goodlands", phone_number: "57687078", category: "belgian")
puts "Created Happy Rajah"
Restaurant.create!(name: "Epicure", address: "657805 Paris", phone_number: "57777878", category: "french")
puts "Created Epicure"
Restaurant.create!(name: "Bella Donna", address: "657805 Bihar", phone_number: "57755878", category: "chinese")
puts "Created Bella Donna"
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
