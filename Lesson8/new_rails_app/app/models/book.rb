class Book < ActiveRecord::Base
  attr_accessible :abstract, :author, :title
end
