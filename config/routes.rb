Rails.application.routes.draw do
  
  resources :placeholders
  root 'parking_lots#index'

  resources :parking_lots, execpt: [:show, :destroy] do
	resources :floors, only: :index do
  		resources :cars, only: :index
	end
  end
  	
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
