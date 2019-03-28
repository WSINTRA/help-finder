class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create]

	def new
    # GET /users/new
    if logged_in?
      redirect_to "/services"
    end
    @user = User.new
  end

  def create
    @user = User.create(new_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end 

  private

  def new_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
