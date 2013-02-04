# TODO rubyful_soup is broken
require 'rubygems'
require 'rubyful_soup'

invalid_html = 'A lot of <b class=1>tags are <i class=2> never closed.'
soup = BeautifulSoup.new(invalid_html)

puts soup.prettify
