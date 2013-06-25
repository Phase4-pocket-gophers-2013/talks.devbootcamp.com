module UsersHelper 
  def current_user
    if session[:user_id]
      return @current_user ||= User.find_by_username(session[:user_id])
    end
    false
  end

  def teacher
    if session[:user_id]
      @current_user = User.find_by_username(session[:user_id])
      if @current_user.teacher == true
        @current_user
      else
        false
      end
    else
      false
    end
  end
end
