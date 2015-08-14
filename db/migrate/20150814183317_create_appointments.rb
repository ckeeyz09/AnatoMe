class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :workouts
      t.belongs_to :users

      t.integer :date

      t.timestamps 
    end
  end
end
