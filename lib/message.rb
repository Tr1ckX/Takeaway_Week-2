require 'twilio-ruby'

class TextMessage

  def initialize
    account_sid = ENV['MY_TWILIO_USER']
    auth_token = ENV['MY_TWILIO_PASS']
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send(customer_number)

    time = Time.now + Rational(3600)

    message = @client.account.messages.create(
        :from => ENV['MY_TWILIO_NUM'],
        :to => customer_number,
        :body => 'Your order will be with you before ' + time.strftime("%H:%M"))
  end

end
