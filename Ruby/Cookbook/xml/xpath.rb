xml = %{
<aquarium>
  <fish color="blue" size="small" />

  <fish color="orange" size="large">
    <fish color="green" size="small">
      <fish color="red" size="tiny" />
    </fish>
  </fish>

  <decoration type="castle" style="gaudy">
    <algae color="green" />
  </decoration>
</aquarium>
}

require 'rexml/document'
doc = REXML::Document.new xml

puts REXML::XPath.first(doc, '//fish')

puts REXML::XPath.match(doc, '//[@color="green"]')

def describe(fish)
  "#{fish.attribute('size')} #{fish.attribute('color')} fish"
end

REXML::XPath.each(doc, '//fish/fish') do |fish|
  puts "The #{describe(fish.parent)} has eaten the #{describe(fish)}."
end
