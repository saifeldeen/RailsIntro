begin
	puts "hello"
	1 + "a"
	puts "last line of golden path"
rescue TypeError
	puts "there was a TypeError problem"
	raise StandardError.new("there was another problem")
rescue NameError
	puts "there was a NameError problem"
	raise
rescue Exception => e
	@e = e
	puts "there was a general problem"
else
	puts "else is run"
ensure
	puts "ensure is run"
end