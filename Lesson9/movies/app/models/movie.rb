class Movie < ActiveRecord::Base
  attr_accessible :genre, :title, :year

  validates :title, :year, :presence => true
#  validates :year, :numericality => true
  validates :year, :numericality => {:greater_than => 1900, :less_than => 2020}
end
