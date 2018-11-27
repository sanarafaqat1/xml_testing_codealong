require 'nokogiri'

class Guiseppes
  attr_accessor :menu
  def initialize
    @menu = Nokogiri::XML(File.open('../xml_menu.xml'))
  end
end

test = Guiseppes.new
puts test.menu
