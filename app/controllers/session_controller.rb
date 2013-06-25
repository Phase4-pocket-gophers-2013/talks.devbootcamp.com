class SessionController < ApplicationController
  
  def login
    session.clear
    @user  = User.find_by_username(params[:username])
    
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.username
      redirect_to user_path(@user), :notice => "You've successfully logged in"
    else
      redirect_to root_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end
end