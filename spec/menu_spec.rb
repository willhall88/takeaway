require "menu"

describe Menu do
  # let(:dish_2){Dish.new("haddock", 3.00)}
  # let(:dish_1){Dish.new("cod", 2.50)}
  let(:dish_1){double :dish, name: :haddock, :price => 2.00}
  let(:dish_2){double :dish,  name: :cod, :price => 3.00}
  let(:menu){Menu.new([dish_1,dish_2])}


  it "should have an array of dishes when it is created" do
    expect(menu).to have_dishes
  end

  it "should be able to list the dishes" do
    expect(menu.list).to eq (" haddock -- 2.00 /n cod -- 3.00 /n")
  end

end