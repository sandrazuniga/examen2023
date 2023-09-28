Rails.application.routes.draw do
  get 'home/page'
  get 'home/index'
  resources :maintenances
  resources :materials
  resources :cities
  resources :motors
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
