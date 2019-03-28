class ServicesController < ApplicationController


    def new
    	# binding.pry
    end


    def index
    	# binding.pry
    end

   
   	def show
   		@service_type = ServiceType.find_by(name: params[:service][:service_type])
   		@services = Service.where(service_type: @service_type.id)
   		@service_name = @service_type.name
		  render :show
	end


end
