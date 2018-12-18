# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
def send_text(message)
  account_sid = 'ACdf2783b7bcfcb442f89ae3aa22f2ac52'
  auth_token = 'a24fe353a40b38bda0f90c6416156bdf'
  client = Twilio::REST::Client.new(account_sid, auth_token)

  from = '+15551234567' # Your Twilio number
  to = '+447733101732' # Your mobile phone number

  client.messages.create(
  from: from,
  to: to,
  body: message
  )
end 
