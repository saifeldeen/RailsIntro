class HomeController < ApplicationController
	def index
		# redirects...
		# redirect_to books_path
		# renders no layout
		# render :layout => false
		
	end

	def healthcheck
#		render :text => "OK", :status => 200
		render :json => {:status => "OK", :message => "All good"}, :status => 200
	end

	def greeting
		@name = params[:name]
	end
end