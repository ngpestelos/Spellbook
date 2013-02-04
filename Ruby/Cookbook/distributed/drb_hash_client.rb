require 'drb'

# Prep DRb
DRb.start_service

# Fetch the shared object
shared_data = DRbObject.new_with_uri('druby://127.0.0.1:61676')

# Add to the Hash
shared_data[:client] = 'Some data set by the client'
shared_data.each do |key, value|
  puts "#{key} => #{value}"
end

puts shared_data
