require 'faker'
categories = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  @restaurant = Restaurant.new(name: Faker::Restaurant.name, category: categories.sample, address: Faker::Address.city)
  puts "#{@restaurant.name} #{@restaurant.address} #{@restaurant.category}"
  @restaurant.save
end

# Review.new(restaurant_id)

puts 'done'
