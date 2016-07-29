class MapsController < ApplicationController
  def new
    @map = Map.new
  end
  
  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to @map
    else
      render :new
    end
  end
  
  private
  
  def map_params
    params.require(:map).permit(:name, :starting_latitude, :starting_longitude)
  end
end
