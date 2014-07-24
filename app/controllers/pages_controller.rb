class PagesController < ApplicationController
  def home
    if params[:search].present?
      @spots = Spot.fuzzy_search(params[:search])
    else
      @spots = Spot.paginate(page: params[:page], per_page:10).order(:city, :address_1)
    end
  end

  def about
  end
end
