class Spot < ActiveRecord::Base
  validates_presence_of :city, :state, :street, :zip_code, :building_number, :building_number, :description
end
