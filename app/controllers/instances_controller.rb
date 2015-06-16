class InstancesController < ApplicationController

	def index
		@instances = Instance.all
	end

	def create
		@instance = Instance.new
		@instance.instance_date = Time.now
		@instance.product_id = params[:product_id]
		@instance.ingredient_id = params[:ingredient_id]
		# @ingredient_product = IngredientProduct.where({product_id: params[:product_id], ingredient_id: params[:ingredient_id]}).take
		# @instance.ingredients_products_id = @ingredient_product.id
		if @instance.save
			redirect_to product_path
		else render "create"
		end
	end

	def update
		@instance = Instance.find(params[:id])
		if @instance.update_attributes(instance_params)
			# return to the sellers item index page after update to user info
			# redirect_to request.referer
			redirect_to product_ingredient_path(product_id: @instance.product_id, id: @instance.ingredient_id)
		else
			redirect_to product_ingredient_path
		end

	end


private
 
	def instance_params
		params.require(:instance).permit(:instance_date, :note, :image)
	end
end