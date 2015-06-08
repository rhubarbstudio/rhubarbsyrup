class Ingredient < ActiveRecord::Base
	has_and_belongs_to_many :products
	# has_many :product_ingredients
	# has_many :products, :through => :product_ingredients
end
