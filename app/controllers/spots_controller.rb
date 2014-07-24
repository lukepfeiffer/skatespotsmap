class SpotsController < ApplicationController
  def index
  end

  def city
    if params[:address].present?
      @city = City.find(params[:address])
    end
    @cities = Spot.pluck(:city).uniq
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

  def destroy
    Spot.find(params[:id]).destroy
    redirect_to root_path
  end

  def spot_params
    params.require(:spot).permit(
      :city,
      :state,
      :zip_code,
      :address_1,
      :address_2,
      :description,
      :additional_info
    )
  end
end
