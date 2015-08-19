class AddRelationToWorkouts < ActiveRecord::Migration
	def change
	  change_table :workouts do |t|
	    t.belongs_to :musclegroups
	  end
	end
end
