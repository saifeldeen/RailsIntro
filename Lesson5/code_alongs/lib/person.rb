class Person
	attr_accessor :first_name, :last_name
	attr_writer :middle_name

	def initialize(first, last)
		@first_name = first
		@last_name = last
	end

	def get_full_name
		"#{@first_name} #{@middle_name} #{@last_name}"
	end
end