class UsersController < ApplicationController

  def homepage

  end

  def create
    @user = User.create(user_params)
    redirect_to "/new_user" unless @user.id
    session[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
