Rails.application.routes.draw do
  get 'user/show'

 resources :carts, only:[:create, :show, :destroy]
 resources :items, only: [:show, :index,:create,:new] do
 resources :adminavatar
  end
 resources :orders

 root 'items#index'
   devise_for :users
  devise_scope :user do
      get '/users/sign_out'=> 'devise/sessions#destroy'
  end

  

    resources :admin do 
    
  end  




   resources :charges
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
