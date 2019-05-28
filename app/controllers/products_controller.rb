class ProductsController < ApplicationController

	before_action :authenticate_user!, except: [:index]

	# GET methods

	def show
		@product = Product.find(params[:id])
	end

	def index
		@products = Product.where(available: true)
	end

	def new
		@product = Product.new
	end


	# POST methods

	def create
		@product = Product.new(product_params)
		@product.category_id = 1
		@product.user = current_user
	    if @product.save
	      redirect_to user_products_path, notice: "Produto criado com sucesso"
	    else
	      render :new, notice: "Tente novamente, algo deu errado"
	    end
	end

	def update
	end

	def destroy
	end


	# Privates

	private

  	def product_params
    	params.require(:product).permit(:name, :description, :category, :image)
  	end

end