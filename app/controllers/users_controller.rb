class UsersController < ApplicationController

    def index
        # @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @drink = Drink.new
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to drinks_path
        else
            render :new
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to drinks_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
