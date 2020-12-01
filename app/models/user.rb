class User < ApplicationRecord
    has_one :goal

    def full_name 
        "#{self.first_name}  #{self.last_name}"
    end 
end
