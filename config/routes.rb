Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root
  root "posts#index"

  #posts and comments route # resources creates all CRUD routes auto
  resources :posts do
    resources :comments
  end

  #signup and sessions
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
end
