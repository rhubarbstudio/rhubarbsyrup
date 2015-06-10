class InstancesController < ApplicationController

	def create
		@instance =Instance.new
		@instance.instance_date = Time.now
		@product_ingredient_id = IngredientProduct.where({product_id: params[:product_id], ingredient_id: params[:ingredient_id]} )
		@instance.ingredients_products_id = @product_ingredient_id		
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
