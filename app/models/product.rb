class Product < ActiveRecord::Base
	validates :product_name, presence: true
	has_and_belongs_to_many :ingredients
	belongs_to :ingredient_product
	
	# has_many :product_ingredients
	# has_many :ingredients, :through => :product_ingredients
	
end
