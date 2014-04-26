require 'takeaway'

describe Takeaway do
  let(:takeaway){Takeaway.new}
  let(:menu) {double :menu, :list => ["haddock", "£2.00"]}
  let(:order) {double :order}
  it 'can ask for the menu' do
    expect(menu).to receive(:list)
    takeaway.show(menu)
  end

  it 'can show the menu' do
    expect(takeaway.show(menu)).to eq ["haddock", "£2.00"]
  end

  it 'can accept user input of items' do
    takeaway.stub(:gets).and_return("Haddock", "2")
    expect(takeaway.user_input).to eq "2"
  end

  it 'can add the user input to an order' do
    takeaway.stub(:gets).and_return("Haddock", "2")
    expect(order).to receive(:add)
    takeaway.place(order)
  end

  it 'can ask for the total cost' do
    takeaway.stub(:gets).and_return("4.00")
    expect(takeaway.user_total).to eq "4.00"
  end

  it 'can compare the input cost with the total cost' do
    takeaway.stub(:gets).and_return("4.00")
    takeaway.user_total
    expect(order).to receive(:cost){"4.00"}
    expect(takeaway).to have_correct_total(order)
  end

  it 'knows it the totals dont match' do
    takeaway.stub(:gets).and_return("4.00")
    takeaway.user_total
    expect(order).to receive(:cost){"2.00"}
    expect(takeaway).not_to have_correct_total(order)
  end



  it 'should know what time an hour from now is' do
    takeaway = Takeaway.new
    expect(takeaway.time).to eq "#{(Time.new.hour) +1}:#{'%02d' % Time.new.min}"
  end

end