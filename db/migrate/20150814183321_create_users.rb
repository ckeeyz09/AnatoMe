class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :location
      t.string :goal
      t.integer :weight
      t.integer :height
      t.integer :bfp
      t.integer :bmi

      t.timestamps
    end
  end
end
