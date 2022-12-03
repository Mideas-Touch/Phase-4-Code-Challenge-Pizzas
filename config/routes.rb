Rails.application.routes.draw do
  resources :restaurants
  resources :pizzas
  resources :restaurant_pizzas


  # get 'restaurant/pizza'
  # get 'restaurant/restaurant_pizza'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
