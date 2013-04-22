module OutOfBoundsUtil
	def out_of_bounds?(min, value, max)
		value > max || value < min
	end
end