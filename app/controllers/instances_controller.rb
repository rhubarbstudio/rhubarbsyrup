class InstancesController < ApplicationController

	def create
		@instance =Instance.new(instance_params)
		@instance.instance_date = Time.now
		@instance.save
	end


private
 
	def instance_params
		params.require(:instance).permit(:instance_date)
	end
end
