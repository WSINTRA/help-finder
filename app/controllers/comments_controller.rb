class CommentsController < ApplicationController
	def create
		facility = Facility.find(params[:facility][:id])
		comment = Comment.create!(description: params[:description], facility: facility, user: current_user)
		UserComment.create!(user: current_user, comment: comment, facility: facility)
		redirect_to facility
	end

	def destroy
		facility = Facility.find(params[:facility][:id])
		comment = Comment.find(params[:id])
		if current_user == comment.user
			UserComment.find_by(comment: comment).destroy
		end
		redirect_to facility
		# byebug
	end
end
