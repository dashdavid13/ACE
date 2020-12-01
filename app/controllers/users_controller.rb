class UsersController < ApplicationController

    def index
        @users = User.all
        

        #authentication 
        #if sign up, redirect_to new page 

        #if sign in, redirect_to user_path(@user)
    end

    def new
        @user = User.new

    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])

    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :confirm_password, :first_name, :last_name, :image, :diet_restriction, :age, :height, :weight, :gender, :activity)
    end





end
