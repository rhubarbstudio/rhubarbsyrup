class Product < ActiveRecord::Base
	validates :product_name, presence: true
	has_many :instances
	has_many :ingredients, :through => :instances do
		def unique
			# where("instances.instance_date = ?", nil)
			where({"instances.instance_date" => nil})
		end
		
	end

	def self.convert_date(val)
		if val.length > 0
  			complete_time = Time.parse(val).in_time_zone("Pacific Time (US & Canada)")
  			complete_time = complete_time.strftime("%m/%d/%Y %I:%M %p")
  		else
  			return ""
  		end
	end
end
