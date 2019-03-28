class FacilitiesController < ApplicationController

	def index
		@service = Service.find(params[:service][:service_type])
		@facility_ids = @service.facility_ids
	end

	def show
		@facility = Facility.find(params[:id])
	end
end
