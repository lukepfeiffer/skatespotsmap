class PagesController < ApplicationController
  def home
    @spots = Spot.find(:all, order: :id, limit: '8', order: 'created_at DESC').reverse
  end

  def about
  end
end
