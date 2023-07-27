Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'flights#index'

  get '/flights', to: 'flights#index'
  get '/flights/search', to: 'flights#search'

  resources :bookings, only: [:new, :create, :show]
  resources :trips, only: [:create]
  resources :passengers, only: [:create]
end
