Rails.application.routes.draw do
  resources :transactions
  resources :requests
  resources :listings
  resources :users
  resources :admin
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Health check endpoint
  get "/health", to: proc { [200, {}, ["OK"]] }

  #authentication
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  #admin dashboardd
  get "/admin", to: "admin#index"

  # Defines the root path route ("/")
  root "home#index"
end
