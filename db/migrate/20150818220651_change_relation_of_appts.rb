class ChangeRelationOfAppts < ActiveRecord::Migration
  def change
    rename_column :appointments, :users_id, :user_id
    rename_column :appointments, :workouts_id, :workout_id
  end
end
