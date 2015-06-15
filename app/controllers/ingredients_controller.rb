class IngredientsController < ApplicationController

	def index
		@ingredients = Product.joins(productingredients)
	end

	def show
		@ingredient = Ingredient.find(params[:id]) 
		@instances = Instance.where({
			product_id: params[:product_id],
			ingredient_id: params[:id]
		}).where.not({"instance_date" => nil})
	end

	def new

	end

	def create

	end

	def edit

	end

	def update

	end

	def destroy

	end
end
