class Instance < ActiveRecord::Base
	belongs_to :ingredient
# 	has_many :product_ingredients
# 	has_many :ingredients, :through => :product_ingredients
end
