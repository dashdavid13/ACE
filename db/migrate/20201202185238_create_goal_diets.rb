class CreateGoalDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :goal_diets do |t|
      t.integer :user_id
      t.integer :goal_id
      t.integer :diet_id
      t.timestamps
    end
  end
end

