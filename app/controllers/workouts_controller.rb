class WorkoutsController < ApplicationController
  def index
  end

  def show
    @workout = Workout.friendly.find(params[:name])
  end
end
