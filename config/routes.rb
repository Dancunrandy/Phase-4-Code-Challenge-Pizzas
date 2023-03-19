Rails.application.routes.draw do
  resources :restaurants
  resources :pizzas
  resources :restaurant_pizzas
end
