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
  			date= Date.parse(val).strftime("%m/%d/%Y")
  			hours = val[11..12]
  			minutes = val[14..15]
  			month = val[5..6]
  			year = val[2..3]
  			day = val[8..9]
  			complete_time = Time.parse(val).in_time_zone("Pacific Time (US & Canada)")
  			complete_time = complete_time.strftime("%m/%d/%Y %I:%M %p")
  			# complete_time = month+"/"+day+"/"+year+" "+hours+":"+minutes+" "+"UTC"
  			# complete_time = complete_time.in_time_zone("Pacific Time (US & Canada)")
  			
  		else
  			return ""
  		end
	end
end
