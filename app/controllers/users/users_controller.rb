class Users::UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		unless @user == current_user
			@products = @user.products
		else
			redirect_to users_products_path
		end
	end

	def edit
	end

end