class HomeController < ApplicationController
	def index
	    Rails.logger.debug("********  User ID (session): #{session[:user_id]}" )
	end
end
