Rails.application.routes.draw do

resources :carts, only:[:create, :show]
resources :items, only: [:show, :index]

  root 'items#index'
  get '/profil', to: 'home#index'

  devise_for :users

 devise_scope :user do
     get '/users/sign_out'=> 'devise/sessions#destroy'
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
