
class User < ApplicationRecord
    belongs_to :goal
    has_many :goal_diets
    has_many :diets, through: :goal_diets
    has_secure_password
    #has_one_attached :image

  
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

   def bmr
      if self.gender == "Female"
        bmr = 655 + (4.3 * self.weight) + (4.7 * self.height) - (4.7 * self.age)
      elsif self.gender == "Male"
        bmr = 66 + (6.3 * self.weight) + (12.9 * self.height) - (6.8 * self.age) 
      else
        "You need to fill out your information before we can calculate your caloric intake."
      end
   end

   def maintain_cals #maintains calories based on bmr above
    if self.activity == "Sedentary"
      self.bmr * 1.2
    elseif self.activity == "Lightly Active"
      self.bmr * 1.375
    elseif self.activity == "Moderately Active"
      self.bmr * 1.55
    elseif self.activity == "Very Active"
      self.bmr * 1.725
    elseif self.activity == "Extremely Active"
      self.bmr * 1.9
  end

  def weight_loss_cals #lose a lb a week
    self.maintain_cals - 500
  end

  def gain_muscle_cals #gain a pound a week
    self.maintain_cals + 500
  end

end
