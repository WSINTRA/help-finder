class FacilitiesController < ApplicationController

	def index
		
		@service = Service.find(params[:service][:service_type])
		@facility_ids = @service.facility_ids

	end
end
