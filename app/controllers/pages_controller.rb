class PagesController < ApplicationController
  def home
    if params[:search].present?
      @spots = Spot.fuzzy_search(params[:search]).paginate(page: params[:page], order: 'created_at DESC', per_page: 15).order(:city, :address_1)
    else
      @spots = Spot.paginate(page: params[:page], order: 'created_at DESC',  per_page: 15)
    end
  end

  def about
  end
end
