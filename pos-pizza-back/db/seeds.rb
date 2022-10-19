puts "🌱 Seeding data..."

50.times do
  Customer.create(
    fname: Faker::Name.first_name,
    lname: Faker::Name.last_name,
    phone: Faker::PhoneNumber.cell_phone =~ /\d/,
    street_address: Faker::Address.street_address,
    secondary_address: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    order_history: rand(1..100),

  )
end

# ActiveRecord::Base.connection.reset_sequence!("toppings")

# Topping.destroy_all

# toppings = [
#   { name: "pepperoni", vegetarian: false },
#   { name: "sausage", vegetarian: false },
#   { name: "canadian bacon", vegetarian: false },
#   { name: "bacon", vegetarian: false },
#   { name: "onions", vegetarian: true },
#   { name: "green peppers", vegetarian: true },
#   { name: "black olives", vegetarian: true },
#   { name: "mushrooms", vegetarian: true },
# ]

# toppings.each do |t|
#   Topping.create(t)
# end

# # run a loop 50 times
# 50.times do
#   # create a game with random data
#   game = Game.create(
#     title: Faker::Game.title,
#     genre: Faker::Game.genre,
#     platform: Faker::Game.platform,
#     price: rand(0..60)
#   )

#   # create between 1 and 5 reviews for each game
#   rand(1..5).times do
#     Review.create(
#       score: rand(1..10),
#       comment: Faker::Lorem.sentence,
#       game_id: game.id # use the ID (primary key) of the game as the foreign key
#     )
#   end
# end

puts "🌱 Done seeding!"
