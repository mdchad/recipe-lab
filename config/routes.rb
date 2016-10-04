Rails.application.routes.draw do

  get "signup" => "users#new"

  get "login" => "sessions#new"

  post "login" => "sessions#create"

  delete "logout" => "sessions#destroy"

  root 'main#index'

  resources :users
  resources :courses
  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
