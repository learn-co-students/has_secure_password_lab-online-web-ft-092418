class UsersController < ApplicationController
    def welcome
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        User.create(user_params)
        redirect_to root_path
    end

    private
        def user_params
            params.require(:user).permit(:name, :password, :password_confirmation)
        end
end
