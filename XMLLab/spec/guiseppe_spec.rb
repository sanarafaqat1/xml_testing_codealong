describe 'Guiseppes'do

  before(:all)do
    @menu = Guiseppes.new
  end

  it 'should have no price more than £10' do
    # loop through the prices and do assertion to check its not more than 10
    @menu.get_all__prices_as_floats.each do |price|
      expect(price).to be <= 10
    end
  end
  it 'should have no item with calories over 1000 except for Full Breakfast'do
    @menu.get_all_food_items.each do |food|
      if food.element_children[0].text == 'Full Breakfast'
        expect(food.element_children[3].text.to_i).to be > 1000
      else
        expect(food.element_children[3].text.to_i).to be < 1000
      end
    end
   end

   it 'should have all the waffle dishes stating you get two waffles'do
      @menu.get_all_food_items.each do |food|
        if food.element_children[0].text.include? 'Waffles'
          expect(food.element_children[2].text).to include 'Two'
        end
      end
    end
  end
