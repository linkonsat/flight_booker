# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'flights#index'
  resources :flights
  resources :bookings
  get 'find_flight', to: 'flights#find_flight'
  # Defines the root path route ("/")
  # root "articles#index"
end
