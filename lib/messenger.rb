require 'rubygems'
require 'twilio-ruby'

class Messenger
  def initialize
    account_sid = 'AC352cdfcffb085a291336786aea8ced97'
    auth_token = 'ba904b19c1225372c3bc590e192594a2'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def confirmation(time)

    message = @client.account.sms.messages.create(
    :body => "Thank you for your Order! it will be with you before #{time}",
    :to => "+447816658175",
    :from => "441323702025"  )

    puts message.sid 
  end
end