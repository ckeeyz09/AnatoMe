class MusclegroupsController < ApplicationController
  def index
    @muscles = Musclegroup.all
  end

  def show
    @muscle = Musclegroup.friendly.find(params[:name])
  end
end
