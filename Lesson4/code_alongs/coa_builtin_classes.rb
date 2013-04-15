################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Built In Classes
#
################################################################################
#We are going to use the built in class 'File' to create a .txt file and add some text to it. 

# 1. Ask the user for a file name. Open or create a file by that name, 
# by adding file extension".txt" to the users input.
# Ask the user to write a sentence. Append that sentence to the file, preceded
# by the current date and time. Use newline character ("\n") as needed. Be sure to close the file. 
# Check your work on the file system.

print "Enter a filename: "
file_name = gets.chomp
file = File.new("#{file_name}.txt", "a")

print "Tell me something: " 
sentence = gets.chomp

file.write("#{Time.now}: #{sentence}\n")

file.close

# 2. Use the File class to open the file created above (using the same input from above), to read and 
# display its contents to the terminal window. Read documentation on the .gets method, and write the 
# necessary loop code.

file = File.new("#{file_name}.txt", "r")

while input = file.gets 
	puts input	
end

file.close