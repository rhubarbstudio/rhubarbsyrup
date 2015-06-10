class IngredientProduct < ActiveRecord::Base
	self.table_name = "ingredients_products"
	has_many :products
	has_many :ingredients
end
