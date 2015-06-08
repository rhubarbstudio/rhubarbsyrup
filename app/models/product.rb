class Product < ActiveRecord::Base
	validates :product_name, presence: true
	has_and_belongs_to_many :ingredients
	
	# has_many :product_ingredients
	# has_many :ingredients, :through => :product_ingredients
	
end
