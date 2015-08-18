class AddDaysToAppointments < ActiveRecord::Migration
    change_table :appointments do |t|
    t.integer :day
    t.string :description
  end
end
