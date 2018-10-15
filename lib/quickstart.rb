require 'send_sms'
require 'sinatre'

get "/sms-quickstart" do

  twiml = Twilio::TwiML::MessageingResponse.new do |r|
    r.message(body: "Thanks for the signing report.")
  end
  twiml.to_s
end
