Rails.application.routes.draw do

	# root route to product list
	root 'products#index'

	devise_for :users

	namespace :users do
		controller :profile do
			get "/products", action: :products, as: 'products'
			get "/bids", action: :bids, as: 'bids'
			get "/edit", action: :edit, as: 'edit'
		end
		controller :users do
			get "/products/:id", action: :show, as: 'show'
		end
	end
  
	resources :products

	resources :bids
	get '/propose/:id', to: "bids#new", as: 'make_bid'

end
