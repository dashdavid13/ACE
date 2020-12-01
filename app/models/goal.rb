class Goal < ApplicationRecord
    belongs_to :user
    belongs_to :workout
    belongs_to :diet
end
