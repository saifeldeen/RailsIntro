require 'lib/employee'
class Manager < Employee

	def initialize(first, last, title)
		super(first, last)
		@title = title
	end

	def full_name
		"#{super} (#{@title})"
	end
end