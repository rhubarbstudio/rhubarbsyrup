class Ingredient < ActiveRecord::Base
	has_many :instances
	has_many :products, :through => :instances
end
