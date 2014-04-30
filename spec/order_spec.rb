require 'order'

describe Order do
  let(:order){Order.new}
  let(:dish_1){double :dish, name: :Cod, :price => 2.00}
  let(:menu) {double :menu}


  it "should be empty when it is created"do
   expect(order.dishes).to be_empty
  end

  it "should be able to add one dish" do
    order.add(dish_1)
    expect(order.dishes).to eq [dish_1]
  end

  it"should be able to add two of the same dish"do
    order.add(dish_1, 2)
    expect(order.dishes).to eq [dish_1, dish_1]
  end

  it"should be able to add up cost of order" do
    dish_2 = double :dish, name: :Haddock, :price => 3.00
    order.add(dish_1)
    order.add(dish_2)
    expect(order.cost).to eq 5.00
  end

  it "should be able to list the placed order" do
    order.stub(:print)
    order.add(dish_1, 2)
    expect(order.list).to be_an String
  end
end