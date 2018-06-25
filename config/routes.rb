Rails.application.routes.draw do
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  get "/show", to: "users#show"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  root "static_pages#home"
  resources :users
end
