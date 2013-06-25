class UsersController < ApplicationControler
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user)
    else
      @user.errors.delete(:password_digest)
      flash[:error] = @user.errors.full_messages
      root_path
    end
  end

  def show
  end
end