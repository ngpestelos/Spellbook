orders_xml = %{
<orders>
  <order>
    <number>105</number>
    <date>02/10/2006</date>
    <customer>Corner Store</customer>
    <items>
      <item upc="404100" desc="Red Roses" qty="240" />
      <item upc="412002" desc="Candy Hearts" qty="160" />
    </items>
  </order>
</orders>
}

require 'rexml/document'
orders = REXML::Document.new(orders_xml)
orders.root.each_element do |order|
  order.each_element do |node|
    if node.has_elements?
      node.each_element do |child|
        puts "#{child.name}: #{child.attributes['desc']}"
      end
    else
      puts "#{node.name}: #{node.text}"
    end
  end
end
