class Spot < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates_presence_of :city, :state, :address_1, :zip_code, :description, :filepicker_url
end
