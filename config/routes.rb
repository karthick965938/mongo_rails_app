Rails.application.routes.draw do
  devise_for :users
  if current_user.present?
	  use_doorkeeper
	end
  resources :products
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
