class CommentsController < ApplicationController
	def create
		# byebug
		facility = Facility.find(params[:facility][:id])
		comment = Comment.create!(description: params[:description], facility: facility, user: current_user)
		UserComment.create!(user: current_user, comment: comment, facility: facility)
		byebug
		redirect_to facility
	end
end
