class Goal < ApplicationRecord
    belongs_to :diet
    has_many :users
    #has_many :goal_diets
    #has_many :diets, through: :goal_diets
    has_many :goal_workouts
    has_many :workouts, through: :goal_workouts 
    
    
end

