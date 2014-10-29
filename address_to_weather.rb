require 'open-uri'
require 'json'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# If you experience an error relating to SSL,
#   uncomment the following two lines:

# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

puts "Let's get the weather forecast for your address."

puts "What is the address you would like to know the weather for?"
the_address = gets.chomp
url = URI.encode(the_address)

# Your code goes below.
url = "http://api.forecast.io/forecast/8687fce2302d4f90e2c59ca819be9892/41.4896234,-87.5964137"
raw_data = open(url).read
parsed_data = JSON.parse(raw_data)


# Ultimately, we want the following line to work when uncommented:

# puts "The current temperature at #{the_address} is #{the_temperature} degrees."
# puts "The outlook for the next hour is: #{the_hour_outlook}"
# puts "The outlook for the next day is: #{the_day_outlook}"
