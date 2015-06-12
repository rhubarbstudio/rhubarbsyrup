class Instance < ActiveRecord::Base
	belongs_to :product
	belongs_to :ingredient
	scope :unique, where(instance_date: '')
end
