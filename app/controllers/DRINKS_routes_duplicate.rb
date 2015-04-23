Rails.application.routes.draw do

  get "drinks/" => "drinks#index"
  get "drinks/new" => "drinks#new", as: :new_drink
  get "drinks/:id" => "drinks#show", as: :drink
  post "drinks/" => "drinks#create"
  get "drinks/:id/edit" => "drinks#edit", as: :edit_drink
  patch "drinks/:id" => "drinks#update"
  delete "drinks/:id" => "drinks#destroy"

  get "users" => "users#index"
  get "users/:id" => "users#show", as: :user
  post "users" => "users#create"
  post "users/:id/drinks" => "drinks#create", as: :user_drinks
  get "signup" => "users#new"
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"