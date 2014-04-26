require 'messenger'

describe Messenger do
  let(:messenger) {Messenger.new}
  it "should know what time an hour from now is" do
    expect(messenger.time).to eq "#{(Time.new.hour) +1}:#{Time.new.min}"
  end

  # it "can send a text message" do

  # end


end