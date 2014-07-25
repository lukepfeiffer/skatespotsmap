class Spot < ActiveRecord::Base
  validates_presence_of :city, :state, :address_1, :zip_code, :description, :filepicker_url
end
