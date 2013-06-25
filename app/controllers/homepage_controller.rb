class HomepageController < ApplicationController
  def show
    @user = User.new
  end
end