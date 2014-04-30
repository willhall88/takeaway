require "menu"

describe Menu do
  let(:dish_1){double :dish, name: :Haddock, :price => 2.00}
  let(:dish_2){double :dish,  name: :Cod, :price => 3.00}
  let(:menu){Menu.new}

  it "should have an array of dishes when it is created" do
    expect(menu).to have_dishes
  end

  it "should be able to list the dishes" do
    menu.stub(:puts)
    expect(menu.list).to be_an String
  end
end