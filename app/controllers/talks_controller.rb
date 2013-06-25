class TalksController < ApplicationController
  include UsersHelper

  def show
    @talk = Talk.find(params[:id])
    @user  = current_user
  end

  def index
    @talks = Talk.all
    @user  = current_user
  end

  def create
    if teacher 
    p "innnnnn"
      @talk = Talk.new(talk_parameters)
      if @talk.save
        redirect_to talk_path(@talk)
      else
        redirect_to user_path(@user)
      end
    else
      redirect_to root_path
    end
  end


  private
  def talk_parameters
    params.require(:talk).permit(:title, :content, :youtube_url)
  end
end