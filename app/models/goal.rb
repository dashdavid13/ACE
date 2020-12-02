class Goal < ApplicationRecord
    belongs_to :workout
    belongs_to :diet
    has_many :users
    #has_many :goal_diets
    #has_many :diets, through: :goal_diets
    
end

