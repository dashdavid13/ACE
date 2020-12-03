class GoalDiet < ApplicationRecord
    belongs_to :user
    belongs_to :diet
    belongs_to :goal
end
