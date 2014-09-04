class User < ActiveRecord::Base
  has_many :spots
  has_many :comments
  include Authem::User

  def filepicker_url
    super.presence || default_url
  end

  def default_url
    "https://www.filepicker.io/api/file/zhLWjAZvSMiF82eI7Nlr"
  end
end
