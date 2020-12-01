class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :confirm_password
      t.string :first_name
      t.string :last_name 
      t.string :image
      t.string :diet_restriction 
      t.integer :age
      t.integer :height
      t.integer :weight
      t.string :gender 
      t.string :activity

      t.timestamps
    end
  end
end
