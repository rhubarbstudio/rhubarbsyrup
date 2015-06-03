class ProductsController < ApplicationController
	
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end


	def new
		@product = Product.new
	end

	def create
		@product =Product.new(product_params)
		@product.product_name = @product.product_name.downcase
		if @product.save
		 	redirect_to products_path
	 	else
	 		render "new"
		end
		
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		# downcase username when edited so it is stored in lowercase
		#   this makes the username case insensitve
		@product.product_name = @product.product_name.downcase
		if @product.update_attributes(product_params)
			# return to the sellers item index page after update to user info
			# redirect_to request.referer
			redirect_to products_path
		else
			render "edit"
		end
	end

private
 
	def product_params
		params.require(:product).permit(:product_name)
	end
end
