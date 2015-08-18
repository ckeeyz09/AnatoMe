class CreateSupplements < ActiveRecord::Migration
  def change
    create_table :supplements do |t|
      t.string :name
      t.string :description
      t.belongs_to :musclegroups

      t.timestamps null: false
    end
  end
end
