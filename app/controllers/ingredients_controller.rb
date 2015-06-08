class IngredientsController < ApplicationController

	def index
		@ingredients = Product.joins(productingredients)
	end

	def show

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
