class Furniture

	# instance variable
	attr_reader :legs
	
	# class instance variable
	@legs = 8

	# class variable (like a static constant)
	@@legs = 8

	def self.max_legs
		@@legs
	end

	def initialize(legs)
		@legs = legs
	end
end

class Table < Furniture
	@@legs = 4
end

class Chair < Furniture
	@@legs = 6
end

t1 = Table.new(3)
t2 = Table.new(4)

c1 = Chair.new(5)
c2 = Chair.new(6)

puts "Tables: #{t1.legs}, #{t2.legs}"
puts "Chairs: #{c1.legs}, #{c2.legs}"

puts "Table max legs: #{Table.max_legs}"
puts "Chair max legs: #{Chair.max_legs}"
