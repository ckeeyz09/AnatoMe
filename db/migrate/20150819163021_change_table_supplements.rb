class ChangeTableSupplements < ActiveRecord::Migration
  def change
    rename_column :supplements, :musclegroups_id, :musclegroup_id
  end
end
