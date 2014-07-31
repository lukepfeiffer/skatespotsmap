class User < ActiveRecord::Base
  has_many :comments
  include Authem::User
end
