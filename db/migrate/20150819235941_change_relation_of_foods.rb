class ChangeRelationOfFoods < ActiveRecord::Migration
  def change
  	rename_column :foods, :musclegroups_id, :musclegroup_id
  end
end
