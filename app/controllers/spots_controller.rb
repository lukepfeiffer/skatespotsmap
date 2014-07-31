class SpotsController < ApplicationController
  def index
  end

  def show
    @spot = Spot.find(params[:id])
    @comment = Comment.new
    @comments = Comment.all
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

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update_attributes(spot_params)
    redirect_to spot_path(@spot.id)
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
      :filepicker_url,
      :additional_info
    )
  end
end
