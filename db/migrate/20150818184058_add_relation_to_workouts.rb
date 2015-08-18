class AddRelationToWorkouts < ActiveRecord::Migration
  change_table :workouts do |t|
    t.belongs_to :musclegroups
  end
end
