require 'takeaway'

describe Takeaway do
  let(:takeaway){Takeaway.new}
  
  it "can ask for the menu" do
    menu = double :menu
    expect(menu).to receive(:list)
    takeaway.show(menu)
  end

  it "can show the menu" do
    menu = double :menu, :list => ["haddock", "£2.00"]
    expect(takeaway.show(menu)).to eq ["haddock", "£2.00"]
  end




  it "should know what time an hour from now is" do
    takeaway = Takeaway.new
    expect(takeaway.time).to eq "#{(Time.new.hour) +1}:#{'%02d' % Time.new.min}"
  end

end