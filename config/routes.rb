Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  resources :orders, only: [:create]
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
