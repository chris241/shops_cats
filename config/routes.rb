Rails.application.routes.draw do
<<<<<<< HEAD
	  root 'home#index'
      devise_for :users
=======
resources :items, only: [:show, :index]
  root 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> eaa26490a6e2d91dc7a1182756f4528a04a5d77d
end
