Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "resources#index"

  resources :resources
  resources :authors
  resources :publishers
  resources :categories
  resources :potential_reads, only: [:create, :destroy]
  resources :readings, only: [:create, :destroy]
  resources :reads, only: [:create, :destroy]
  resources :loans, only: [:create, :destroy]
end
