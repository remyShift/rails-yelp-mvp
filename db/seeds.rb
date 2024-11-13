require "faker"

# Destroy all existing restaurants
puts "Destroying all restaurants..."
Restaurant.destroy_all

# Create new restaurants

puts "Creating restaurants..."

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, category: categories.sample)
end

puts "Finished!"
puts "Created #{Restaurant.count} restaurants"
