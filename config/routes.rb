# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'flights#index'
  resources :flights
  resources :bookings
  resources :promo_codes
  resources :airlines
  resources :tickets
  get 'find_tickets', to: 'tickets#find_tickets'
  get 'find_flight', to: 'flights#find_flight'
  get 'flight_search', to: 'flights#flight_search'
  # Defines the root path route ("/")
  # root "articles#index"
end
