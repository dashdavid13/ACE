
class User < ApplicationRecord
    belongs_to :goal
    has_many :goal_diets
    has_many :diets, through: :goal_diets
    has_secure_password
    has_one_attached :image

  
    def full_name 
        "#{self.first_name}  #{self.last_name}"
    end 

   def find_current_diet_plans
     self.goal_diets.select do |gd|
        gd.goal_id == self.goal_id
     end 
   end

   def find_current_diet_plan 
   
    self.find_current_diet_plans.last 
   end 
end
