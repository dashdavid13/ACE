class CreateGoalWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :goal_workouts do |t|
      t.integer :goal_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
