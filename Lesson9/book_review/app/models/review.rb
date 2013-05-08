class Review < ActiveRecord::Base
  attr_accessible :comments, :user_id, :book_id

  belongs_to :user
  belongs_to :book
end
