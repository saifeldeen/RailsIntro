class MoonphasesController < ApplicationController
	def index
      Rails.logger.debug("******** in index" )
		@now = Date.today
		@yesterday = (@now - 1 )
		@tomorrow = (@now + 1 )
		@moon = MoonPhases.new
		@fullness_today = @moon.getMoonFullness(@now)
		@fullness_yesterday = @moon.getMoonFullness(@yesterday)
		@fullness_tomorrow = @moon.getMoonFullness(@tomorrow)
	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @moonphase }
	    end		
	end

	def change_date
		require 'date'
      Rails.logger.debug("******** in change_date" )
		# @now = DateTime.parse( params[:date] )
		@now = DateTime.strptime( params[:date], '%m/%d/%Y')
		@yesterday = (@now - 1 )
		@tomorrow = (@now + 1 )
		@moon = MoonPhases.new
		@fullness_today = @moon.getMoonFullness(@now)
		@fullness_yesterday = @moon.getMoonFullness(@yesterday)
		@fullness_tomorrow = @moon.getMoonFullness(@tomorrow)
		render :action => :index
	end
end