class Product < ActiveRecord::Base
	validates :product_name, presence: true
	has_many :instances
	has_many :ingredients, :through => :instances do
		def unique
			# where("instances.instance_date = ?", nil)
			where({"instances.instance_date" => nil})
		end
	end
end
