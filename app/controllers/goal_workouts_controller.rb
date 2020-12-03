class GoalWorkoutsController < ApplicationController

    def show 
        @workouts = @current_user.goal.goal_workouts
    end

end
