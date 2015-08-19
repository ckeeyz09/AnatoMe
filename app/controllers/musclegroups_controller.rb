class MusclegroupsController < ApplicationController
  def index
    @muscles = Musclegroup.all
  end

  def show
    @muscle = Musclegroup.friendly.find_by_name(params[:name])
  end
end
