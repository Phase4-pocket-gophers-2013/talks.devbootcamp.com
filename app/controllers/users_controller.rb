class UsersController < ApplicationController
  include UsersHelper

  def create
    session.clear
    @user = User.new(user_profile_parameters)
    if @user.save
      session[:user_id] = @user.username
      redirect_to user_path(@user)
    else
      @user.errors.delete(:password_digest)
      flash[:error] = @user.errors.full_messages
      root_path
    end
  end

  def show
    @user = current_user
  end

  private 
  def user_profile_parameters
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end