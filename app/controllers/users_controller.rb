class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def index
    end

    def new
        @user = User.new
        @goals = Goal.all
    end

    def create
        user = User.create(user_params)

        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end

    end

    def show
        @user = User.find(params[:id])
        @goal_diet = GoalDiet.new
        @diets = Diet.all

        if @user == @current_user
            render :show
        else
            redirect_to new_login_path
            flash[:error] = 'You cannot view other profiles!'
            ### need error message - You don't have access to this page 
        end
    end

    def edit 
        @user = User.find(params[:id])
        @diets = Diet.all
        @goals = Goal.all
    end

    def update
        @user = User.find(params[:id])
        if @user.valid?
            # session[:user_id] = @user.id
            @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path(@user)
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to users_path
    end

    private 

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :image, :age, :height, :weight, :gender, :activity, :password, :goal_id)
    end


end
