module AuthenticationConcern
  extend ActiveSupport::Concern
  
  def logged_in?
    current_user.present?
  end

  def current_user
    if session[:user_id]
      return @current_user ||= User.find(session[:user_id])
    end
    false
  end

  def teacher
    current_user.teacher == true
  end

  module ClassMethods
  end

  module InstanceMethods
  end
end
