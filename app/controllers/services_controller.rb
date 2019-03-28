class ServicesController < ApplicationController


    def new
    	# binding.pry
    end


    def index
    	# binding.pry
    end

   
   	def show
      binding.pry
   		@service_type = ServiceType.find_by(name: params[:service][:service_type])
      @icon = ""
      case @service_type.name  #code to decide which icon to render
      when "Kitchen"
        @icon = "food_icon.png"
      when "Hygeine"
        @icon = "bath_icon.png"
      when "Shelter"
        @icon = "bed_icon.png"
      end
   		@services = Service.where(service_type: @service_type.id)
   		@service_name = @service_type.name
		  render :show
	end


end
