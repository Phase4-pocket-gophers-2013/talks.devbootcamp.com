class SessionController < ApplicationController
  def login
    session.clear
    @user  = User.find_by_username(params[:username])
    
    if @user && @user.password == params[:password]
      session[:user_id] = @user.username
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end
end