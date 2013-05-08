class HomeController < ApplicationController
	def index
		@random_number = rand(10)
		#debugger
		Rails.logger.debug("******** TESTING")
	end
end
