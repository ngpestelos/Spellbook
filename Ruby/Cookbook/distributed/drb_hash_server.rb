require 'drb'

# Start up DRb with a URI and a hash to share
shared_hash = {:server => 'Some data set by the server' }
DRb.start_service('druby://127.0.0.1:61676', shared_hash)
puts 'Listening for connection...'
DRb.thread.join
