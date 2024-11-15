# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Suppresion des restaurants !"

Restaurant.delete_all

puts "Création des réstaurants !"



5.times do
  img = Faker::LoremFlickr.image
  cat = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: cat, image_url: img, description: Faker::Fantasy::Tolkien.poem)
end

puts "Finished! Created #{Restaurant.count} restaurants."
