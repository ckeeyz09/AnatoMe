class ChangeRelationOfWorkouts < ActiveRecord::Migration
  def change
    rename_column :workouts, :musclegroups_id, :musclegroup_id
  end
end
