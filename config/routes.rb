Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "sessions#login"

  # User routes
  resources :users, only: %i[new create edit update show destroy]
  # get "signup", to: "users#new"

  #Sessions routes
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  get "/logout", to: "sessions#destroy"
end
