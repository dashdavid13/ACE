class GoalWorkoutsController < ApplicationController

    def index
        @goal_workouts = GoalWorkout.all
    end

    def show 
        @workouts = @current_user.goal.goal_workouts
    end

end
