class Users::ProfileController < ApplicationController

	before_action :authenticate_user!

	def products
		@products = Product.where(user_id: current_user.id)
	end

	def bids
	end
	
end