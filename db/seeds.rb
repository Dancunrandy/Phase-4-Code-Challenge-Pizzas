

10.times do
    restaurant = Restaurant.create(name: Faker::Restaurant.name)
    pizza = Pizza.create(name: Faker::Food.dish)
  
    RestaurantPizza.create(
      restaurant: restaurant,
      pizza: pizza,
      price: rand(1..30)
    )
  end
  