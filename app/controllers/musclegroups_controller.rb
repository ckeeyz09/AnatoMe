class MusclegroupsController < ApplicationController
  def index
  end

  def show
    @muscle = Musclegroups.friendly.find(params[:name])
  end
end
