class Sighting < ActiveRecord::Base
  belongs_to :user
  attr_accessible :comments, :photo, :sighted, :visibility
end
