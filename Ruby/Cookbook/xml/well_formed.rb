require 'rexml/document'

def valid_xml?(xml)
  begin
    REXML::Document.new(xml)
  rescue REXML::ParseException
    # Return nil
  end
end

bad_xml = %{
  <tasks>
    <pending>
      <entry>Grocery Shopping</entry>
    <done>
      <entry>Dry Cleaning</entry>
  </tasks>
}

puts valid_xml?(bad_xml) # nil

good_xml = %{
  <groceries>
    <bread>Wheat</bread>
    <bread>Quadrotriticale</bread>
  </groceries>
}

doc = valid_xml?(good_xml)
puts doc.root.elements[1]
