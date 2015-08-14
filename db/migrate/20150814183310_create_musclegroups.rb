class CreateMusclegroups < ActiveRecord::Migration
  def change
    create_table :musclegroups do |t|
      t.string :name
      t.string :description
      
      t.timestamps null: false
    end
  end
end
