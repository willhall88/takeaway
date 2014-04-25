require "menu"

describe Menu do
  
  it "should have an array of dishes when it is created" do
    dish = double :dish
    menu = Menu.new([dish, dish])
    expect(menu).to have_dishes
  end

  # it "should be able to list the dishes" do
    

  # end
end