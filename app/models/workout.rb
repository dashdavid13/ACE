class Workout < ApplicationRecord
    has_many :goal_workouts 
    has_many :goals, through: :goal_workouts
end
