class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name

  def is_teen?
  	age != nil && age >= 12 && age <= 19
  end

  def has_long_name?
  	first_name != nil && first_name.length >= 10
  end

  def self.all_long_names
  	long_names = []
  	User.all.each do | user |
  		if user.has_long_name?
  			long_names << user
  		end
  	end
  	long_names
  end

end
