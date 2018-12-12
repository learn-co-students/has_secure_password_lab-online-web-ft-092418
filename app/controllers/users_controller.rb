class UsersController < ApplicationController
    def home
    end

    def new

    end

    def create
        if params[:user][:password] == params[:user][:password_confirmation]
            params[:user].delete("password_confirmation")
            @user = User.create(name: params[:user][:name], password: params[:user][:password])
            session[:user_id] = @user.id
            redirect_to home_path
        else
            redirect_to signup_path
        end
    end 
  end
  