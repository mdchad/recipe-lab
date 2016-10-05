Rails.application.routes.draw do


  get "signup" => "users#new"

  post "signup" => "users#create"

  get "login" => "sessions#new"

  post "login" => "sessions#create"

  delete "logout" => "sessions#destroy"

  root 'main#index'

  resources :users
  resources :courses
  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
