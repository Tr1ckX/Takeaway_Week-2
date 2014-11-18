require 'twilio-ruby'

class Message

  account_sid = 'ACa952480953ebe43763c69d441b03d035'
  auth_token = '5bb653f18946093bdf44b6c39f5416e1'


  def create
    @customer_number = '+447518560812'
    @message = 'Test message'
  end

  def send
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(
        :from => "+441163262279",  # Replace with your Twilio number
        :to => @customer_number,     # Replace with your phone number
        :body => @message)
  end

end
