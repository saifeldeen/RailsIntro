module MoonPhaseHelper
	NEW_MOON_VAL = 0
	FULL_MOON_VAL = 100
	MAX_GIBBOUS_VAL = 99
	MIN_GIBBOUS_VAL = 53
	MAX_QUARTER_VAL = 52
	MIN_QUARTER_VAL = 48
	MAX_WAXING_VAL = 47
	MIN_WAXING_VAL = 1

  	def phase_value (illumination)
  		if illumination.to_i == :NEW_MOON_VAL 
  			"new_moon"
  		elsif illumination.to_i == FULL_MOON_VAL
  			"fullmoon"
  		elsif illumination.to_i >= MIN_QUARTER_VAL && illumination <= MAX_QUARTER_VAL
  			"last_quarter"  			
  		elsif illumination.to_i >= MIN_WAXING_VAL && illumination <= MAX_WAXING_VAL
  			"waning_crescent"
  		elsif illumination.to_i >= MIN_GIBBOUS_VAL && illumination <= MAX_GIBBOUS_VAL
  			"waning_gibbous"
  		end
  	end

end