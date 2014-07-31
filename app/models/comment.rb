class Comment < ActiverRecord::Base
  belongs_to :user
  belongs_to :spot
end
