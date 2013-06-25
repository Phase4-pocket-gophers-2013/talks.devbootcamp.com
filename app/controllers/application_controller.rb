class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include AuthenticationConcern

  before_action :ensured_logged_in

  def ensured_logged_in
    redirect_to root_path unless logged_in?
  end
end
