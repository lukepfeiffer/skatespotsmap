class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to root_path
    else
      redirect_to new_spot_path
    end
  end

  def spot_params
    params.require(:spot).permit(
      :city,
      :state,
      :street,
      :zip_code,
      :building_number,
      :description,
      :additional_info
    )
  end
end
