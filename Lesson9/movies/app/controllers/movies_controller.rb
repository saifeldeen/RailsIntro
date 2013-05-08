class MoviesController < ApplicationController
	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(params[:movie])
		if @movie.save 
			redirect_to movie_url(@movie)
		else
			render 'new'
		end
		# render 'debug'
	end

	def show
		@movie = Movie.find(params[:id])
	end
end