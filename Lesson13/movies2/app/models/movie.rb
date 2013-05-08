class Movie < ActiveRecord::Base
  attr_accessible :genre, :title, :year

  validates :title, :presence => true

end
