module UsersHelper 
  def current_user
    if session[:user_id]
      return @current_user ||= User.find_by_username(session[:user_id])
    end
    false
  end
end
