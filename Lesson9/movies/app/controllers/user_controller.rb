class UsersController < ApplicationController

	class User
		attr_accessor :first_name, :last_name, :age
		extend ActiveModel::Naming
		include ActiveModel::Conversion

		def persisted?
			false
		end
	end

	def new
		@user = User.new
	end

end