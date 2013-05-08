class Movie < ActiveRecord::Base
  attr_accessible :directory, :genre, :rating, :summary, :title, :year
end
