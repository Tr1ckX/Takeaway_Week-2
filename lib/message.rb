require 'twilio-ruby'

class Message

  def initialize
    account_sid = ENV['MY_TWILIO_USER'] #'ACa952480953ebe43763c69d441b03d035'
    auth_token = ENV['MY_TWILIO_PASS']  #'5bb653f18946093bdf44b6c39f5416e1'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send(customer_number)
    message = @client.account.messages.create(
        :from => ENV['MY_TWILIO_NUM'], # Replace with your Twilio number +441163262279
        :to => customer_number,     # Replace with your phone number
        :body => 'test message friday')
  end

end
