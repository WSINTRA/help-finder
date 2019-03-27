class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create]

	def new
    # GET /users/new
    @user = User.new
    render :new
  end

  def create
  
    @user = User.create(new_params)
    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(user)
    end
  end


  private
  def new_params
  params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
