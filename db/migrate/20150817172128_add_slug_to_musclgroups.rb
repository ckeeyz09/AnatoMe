class AddSlugToMusclgroups < ActiveRecord::Migration
  def change
    add_column :musclegroups, :slug, :string
    add_index :musclegroups, :slug, unique: true
  end
end
