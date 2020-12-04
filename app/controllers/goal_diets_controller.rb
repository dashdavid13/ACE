class GoalDietsController < ApplicationController

    # def index
    #     @goal_diets = GoalDiet.all
    # end

    def new
        @goal_diet = GoalDiet.new
        @diets = Diet.all
    end

    def show
        @goal_diet = GoalDiet.find(params[:id])
    end


    def create
        @current_user.goal_diets << GoalDiet.create(goal_diet_params)
        redirect_to user_path(@current_user)
    end


    # def edit
    #     @user = User.find(params[:id])
    #     @users = User.all
    #     @diets = Diet.all
        
    # end

    # def update
    #     @goal_diet = GoalDiet.find(params[:id])
    #     @goal_diet.update(goal_diet_params)
    #     redirect_to user_path(@goal_diet.user_id)
    # end

    private

    def goal_diet_params
        params.require(:goal_diet).permit(:diet_id, :goal_id)
    end

end
