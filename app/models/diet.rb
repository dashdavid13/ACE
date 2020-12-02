class Diet < ApplicationRecord
    has_many :goal_diets
    has_many :goals
    #has_many :goals, through: :goal_diets
    has_many :users, through: :goal_diets 
end
