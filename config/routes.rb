Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "resources#index"

  resources :resources
  resources :authors
  resources :publishers
  resources :categories, only: [:index, :show]
  resources :authors, only: [:index, :show]
  resources :publishers, only: [:index, :show]
  resources :resource_languages, only: [:index, :show]
  resources :resource_types, only: [:index, :show]
  resources :potential_reads, only: [:create, :destroy]
  resources :readings, only: [:create, :destroy]
  resources :reads, only: [:create, :destroy]
  resources :loans, only: [:create, :destroy]
  resources :waitlists, only: [:create, :destroy]

  get '/:username/resources', to: 'profiles#show', as: :profile
  get '/:username/edit', to: 'profiles#update', as: :edit_profile

  get '/:username/resources/loans', to: 'profiles#loans', as: :user_loans
  get '/:username/resources/currently-reading', to: 'profiles#currently_reading', as: :user_readings
  get '/:username/resources/want-to-read', to: 'profiles#want_to_read', as: :user_want_to_read
  get '/:username/resources/already-read', to: 'profiles#already_read', as: :user_already_read
end
