class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|

      t.string :name
      t.string :description
      t.string :video_url

      t.timestamps null: false
    end
  end
end
