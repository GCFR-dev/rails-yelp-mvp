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

puts "Creating restaurants..."
Restaurant.create!(name: "Le Marguerite", address: "123 Rue de brest", phone_number: "06 67 67 67 67", category: "chinese")
Restaurant.create!(name: "La Corentine", address: "Place Saint-Corentin", phone_number: "06 98 87 32 38", category: "italian")
Restaurant.create!(name: "Le Saint-patrick", address: "Rue des Quais", phone_number: "06 09 87 56 38 ", category: "japanese")
Restaurant.create!(name: "Le Bar Sur les quais", address: "32 Rue des Quais", phone_number: "06 56 92 22 15", category: "belgian")
Restaurant.create!(name: "Le grand paris", address: "132 Rue des Gentilshommes", phone_number: "06 56 92 22 15", category: "french")



puts "Finished! #{Restaurant.count} restaurants"
