class Book < ActiveRecord::Base
  attr_accessible :title, :year

  has_many :reviews
end
