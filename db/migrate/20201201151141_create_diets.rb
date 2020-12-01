class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :name 
      t.string :description
      t.string :restriction
      t.string :calorie
      t.string :water

      t.timestamps
    end
  end
end
