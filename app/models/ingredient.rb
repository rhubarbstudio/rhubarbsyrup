class Ingredient < ActiveRecord::Base
	has_many :instances do
		def perProduct(id)
			where({"instances.product_id" => id})
		end
	end
	has_many :products, :through => :instances
end
