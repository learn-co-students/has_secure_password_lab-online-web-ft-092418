class SessionsController < ApplicationController


  def create
    @user = User.find_by(name: params[:user][:name])
    #binding.pry
    return redirect_to sessions_path unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to user_welcome_path
  end


end
