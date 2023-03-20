Rails.application.routes.draw do
  resources :restaurants do
    resources :restaurants, only: [:index, :show, :create, :update, :destroy]
  end
  resources :pizzas, except: [:new, :edit]
  resources :restaurant_pizzas, except: [:new, :edit]  
  match "*path", to: "application#not_found", via: :all
end