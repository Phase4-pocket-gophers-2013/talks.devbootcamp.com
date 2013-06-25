class UsersController < ApplicationController
  include UsersHelper

  def create
    session.clear
    @user = User.new(user_profile_parameters)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user.errors.delete(:password_digest)
      flash[:error] = @user.errors.full_messages
      root_path
    end
  end

  def show
    @user = current_user
    @talk = Talk.new
  end

  private 
  def user_profile_parameters
    params.require(:user).permit(:username, :password, :password_confirmation, :teacher)
  end

  def talk_parameters
    params.require(:talk).permit(:title, :content, :youtube_url)
  end
end