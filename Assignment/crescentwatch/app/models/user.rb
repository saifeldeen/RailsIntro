class User < ActiveRecord::Base
  attr_accessible :age, :email, :name, :password
  validates :email, :name, :password, :presence => true
end
