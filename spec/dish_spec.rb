require 'dish'

describe Dish do
  it "should know what sort of dish it is" do
    dish = Dish.new('haddock', 2.00)
    expect(dish.name).to eq 'haddock'
  end

  it "should know how much it costs" do
    dish = Dish.new('haddock', 2.00)
    expect(dish.price).to eq 2.00
  end

end