class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.friendly.find_by_name(params[:name])
  end
end
