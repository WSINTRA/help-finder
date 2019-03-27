class SessionsController < ApplicationController
	def new
    
    @user = User.new
    render :new
  end

  def create
    
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      if @user != nil #Built this so it catches incorrect usernames - WS
     @user.errors.add(:incorrect, "username or password")
      else
      @user = User.new 
      @user.errors.add(:incorrect, "username or password")
    end
    render :new
    end
  end

  # DELETE /sessions
  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end
