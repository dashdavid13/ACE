class AddDietIdToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :diet_id, :integer
  end
end
