Rails.application.routes.draw do
  resources :orderhaspizzas
  resources :orders
  resources :paymentmethods
  resources :recipehasingredients
  devise_for :customers
  resources :pizzas
  resources :recipes
  resources :deliveryinfos
  resources :ingredients
  resources :crusts
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index'
  get "/customers/:id", to: "customers#show"
end
