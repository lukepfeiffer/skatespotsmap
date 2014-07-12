class PagesController < ApplicationController
  def city
    @city = City.find(params[:zip])
  end

  def home
    @spots = Spot.find(:all, order: :id, limit: '4', order: 'created_at DESC').reverse
  end

  def about
  end
end
