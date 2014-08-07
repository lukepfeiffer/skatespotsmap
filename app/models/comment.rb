class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :spot
  validates_presence_of :comment
end
