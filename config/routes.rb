Rails.application.routes.draw do

	# root route to product list
	root 'products#index'

	devise_for :users
	get '/profile/products', to: 'users#products', as: 'user_products'
  
	resources :products

end
