class GoalWorkout < ApplicationRecord
    belongs_to :goal
    belongs_to :workout 
end
