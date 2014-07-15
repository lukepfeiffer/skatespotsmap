class Spot < ActiveRecord::Base
  belongs_to :city
  validates_presence_of :city, :state, :address_1, :zip_code, :description
end
