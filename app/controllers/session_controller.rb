class SessionController < ApplicationController
  
  skip_before_action :ensured_logged_in

  def create
    session.clear
    @user  = User.find_by_username(params[:username])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), :notice => "You've successfully logged in"
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end