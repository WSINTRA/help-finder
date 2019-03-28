class HomesController < ApplicationController
	def index
		redirect_to "/users/new"
	end
end