10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address
  )
  pizza = Pizza.create(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredient
  )

  RestaurantPizza.create(
    restaurant: restaurant,
    pizza: pizza,
    price: rand(1..30)
  )
end
