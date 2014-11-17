require 'twilio-ruby'

account_sid = 'ACa952480953ebe43763c69d441b03d035'
auth_token = '5bb653f18946093bdf44b6c39f5416e1'
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.messages.create(
    :from => "+441163262279",  # Replace with your Twilio number
    :to => "+447518560812",     # Replace with your phone number
    :body => "Second test message")
