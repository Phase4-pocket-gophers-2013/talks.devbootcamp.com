class HomepageController < ApplicationController

  skip_before_action :ensured_logged_in  
  
  def show
    @user = User.new
  end
end