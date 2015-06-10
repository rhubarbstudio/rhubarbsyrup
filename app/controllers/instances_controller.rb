class InstancesController < ApplicationController

	def create
		@instance = Instance.new
		@instance.instance_date = Time.now
		@ingredient_product = IngredientProduct.where({product_id: params[:product_id], ingredient_id: params[:ingredient_id]}).take
		@instance.ingredients_products_id = @ingredient_product.id
		if @instance.save
			redirect_to product_path
		else render "create"
		end
	end


private
 
	def instance_params
		params.require(:instance).permit(:instance_date, :note, :image)
	end
end