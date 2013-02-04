require 'rss/2.0'
require 'open-uri'

url = 'http://www.inquirer.net/fullfeed'
feed = RSS::Parser.parse(open(url).read, false)
puts "=== Channel: #{feed.channel.title} ==="
feed.items.each do |item|
  puts item.title
  puts " (#{item.link})"
  puts
  puts item.description
end
