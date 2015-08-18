class AddSlugToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :slug, :string
    add_index :workouts, :slug, unique: true
  end
end
