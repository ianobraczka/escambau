class BidsController < ApplicationController

	before_action :authenticate_user!, except: [:index]

	# GET methods

	def show
	end

	def new
		@bid = Bid.new
		@requested_product = Product.friendly.find(params[:id])
		@products = Product.where(user_id: current_user.id)
	end


	# POST methods

	def create
		@bid = Bid.new(bids_params)
	    if @bid.save
	      redirect_to root_path, notice: "Proposta enviado com sucesso"
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

  	def bids_params
    	params.require(:bid).permit(:requesting_user_id, :requested_user_id, :product_ids)
  	end

end