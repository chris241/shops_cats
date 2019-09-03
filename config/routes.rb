Rails.application.routes.draw do

resources :carts, only:[:create, :show]
resources :items, only: [:show, :index]
  root 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
