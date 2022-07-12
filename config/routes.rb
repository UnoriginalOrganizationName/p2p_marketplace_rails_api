Rails.application.routes.draw do
  resources :transactions
  resources :requests
  resources :listings
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  # Defines the root path route ("/")
  root "home#index"
end
