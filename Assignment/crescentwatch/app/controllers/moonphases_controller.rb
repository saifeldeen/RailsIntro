class MoonPhasesController < ApplicationController
	def show
		@moon = MooonPhases.new
		@fullness = @moon.getFullness(Date.new 2013, 5, 1)
	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @moonphase }
	    end		
	end
end