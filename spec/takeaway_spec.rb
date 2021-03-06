require 'takeaway'

describe Takeaway do
  let(:takeaway){Takeaway.new}
  let(:menu) {double :menu, :list => ["Haddock", "£2.00"]}
  let(:order) {double :order}
  
  context "showing the menu" do
    it 'can ask for the menu' do
      expect(menu).to receive(:list)
      takeaway.show(menu)
    end

    it 'can show the menu' do
      expect(takeaway.show(menu)).to eq ["Haddock", "£2.00"]
    end
  end
  
  context "ordering the food" do  
    before(:each) do 
      takeaway.stub(:print)
      takeaway.stub(:gets).and_return("Haddock", "2")
    end

    it 'can show the order'do
      expect(order).to receive(:list)
      takeaway.show(order)
    end
  end

  context "adding up the total" do
    before(:each) do 
      takeaway.stub(:print)
      takeaway.stub(:gets).and_return("4.00") 
    end

    it 'can ask for the total cost' do
      expect(takeaway.user_total).to eq "4.00"
    end

    it 'can compare the input cost with the total cost' do
      takeaway.user_total
      expect(order).to receive(:cost){4.00}
      expect(takeaway).to have_correct_total(order)
    end

    it 'knows it the totals dont match' do
      takeaway.user_total
      expect(order).to receive(:cost){2.00}
      expect(takeaway).not_to have_correct_total(order)
    end
    
    it 'show an error message if the totals are incorrect' do
      takeaway.user_total
      expect(order).to receive(:cost){2.00}
      expect{takeaway.confirmation(order)}.to raise_error(RuntimeError)
    end

    it 'sends a text message if the totals are correct' do
      messenger = double :messenger
      messenger.stub(:confirmation). and_return('a text has been sent!')
      takeaway.user_total
      expect(order).to receive(:cost){4.00}
      expect(messenger).to receive(:confirmation)
      takeaway.confirmation(order, messenger) 
    end
  end

  it 'should know what time an hour from now is' do
    expect(takeaway.time).to eq "#{(Time.new.hour) +1}:#{'%02d' % Time.new.min}"
  end
end