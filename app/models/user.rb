
class User < ApplicationRecord
    belongs_to :goal
    has_many :goal_diets
    has_many :diets, through: :goal_diets
    has_secure_password
    validates :username, uniqueness: true
    validates :first_name, :last_name, :age, :height, :weight, :gender, :activity, :goal_id, presence: true 

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

   def bmr #calculate bmr based on user info and gender 
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
    elsif self.activity == "Lightly Active"
      self.bmr * 1.375
    elsif self.activity == "Moderately Active"
      self.bmr * 1.55
    elsif self.activity == "Very Active"
      self.bmr * 1.725
    elsif self.activity == "Extremely Active"
      self.bmr * 1.9
  end
end

  def weight_loss_cals #lose a lb a week
    self.maintain_cals - 500
  end

  def gain_muscle_cals #gain 1/2 pound a week
    self.maintain_cals + 250
  end

  def cal_goals
    if self.goal.name == "Weight Loss"
      cals = self.weight_loss_cals
    elsif self.goal.name == "Muscle Gain"
      cals = self.gain_muscle_cals
    else
      cals = self.maintain_cals
  end
end

  def water #add 12 oz of water for every 30 mins you workout on top of the average intake
    oz = self.weight * 0.67
    cups = oz / 8
  end

end
