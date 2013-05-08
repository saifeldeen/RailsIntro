class Movie < ActiveRecord::Base
  attr_accessible :genre, :title, :year

  validates :title, :presence => true
  validates :year, :numericality => {:greater_than => 1900}

end
