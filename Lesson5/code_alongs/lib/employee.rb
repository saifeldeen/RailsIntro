class Employee
	attr_accessor :first_name, :last_name

	def initialize(first, last)
		@first_name = first
		@last_name = last
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end
end