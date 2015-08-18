class AddSlugToSupplements < ActiveRecord::Migration
  def change
    add_column :supplements, :slug, :string
    add_index :supplements, :slug, unique: true
  end
end
