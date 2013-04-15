################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise Hashes
#
#
################################################################################
 
# 1. create a hash named states comprised of three state names, including New South Wales, and their abbreviations
states = {:NSW=>"New South Wales", :QLD=>"Queensland", "ACT"=>"Australian Capital Territory"}
states["TAS"] = "Tasmania"

# 2. create second hash named request using url and ip as key names
url_ip = {"www.smh.com.au"=>"203.21.85.1", "localhost"=>"127.0.0.1"}

# 3. display the url in the request hash
puts url_ip["localhost"]

# 4. display the abbreviation for New South Wales
puts states[:NSW]
puts states
# 5. display whether the states hash contains the abbreviation NSW
puts "States has NSW key? #{states.has_key?(:NSW)}"

us_states = {Dallas: "Texas", Brooklyn: "New York"}
puts us_states