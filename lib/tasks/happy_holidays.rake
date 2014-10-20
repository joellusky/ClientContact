namespace :text do

	desc "send happy holidays text to client"

	task send: :environment do

    today = Date.today

    Client.all.each do |client|

    # if today.strftime("%m/%d") == '10/11' &&  client.new_years == true

    # number_to_send_to = client.phone_number      
    # account_sid = "AC19e48c08378c2682ce43952fc08ca94c"
    # auth_token = "3a67fdc2e2d79a1bd640c700cd5cb9b0"
    # twilio_phone_number = "(954)-228-8751"

    # @twilio_client = Twilio::REST::Client.new account_sid, auth_token
    # @twilio_client.account.sms.messages.create(
    #   :from => "+1#{twilio_phone_number}",
    #   :to => number_to_send_to,
    #   :body => "Hi #{client.first_name} its #{client.user.first_name} just wanted to wish you a happy new year! #{client.user.signature}")

    if today.strftime("%m/%d") == '01/01' &&  user.client.new_years == true

	number_to_send_to = user.client.phone_number			
	account_sid = "AC19e48c08378c2682ce43952fc08ca94c"
	auth_token = "3a67fdc2e2d79a1bd640c700cd5cb9b0"
	twilio_phone_number = "(954)-228-8751"

	@twilio_client = Twilio::REST::Client.new account_sid, auth_token
	@twilio_client.account.sms.messages.create(
	:from => "+1#{twilio_phone_number}",
	:to => number_to_send_to,
	:body => "Hi #{client.first_name} its #{client.user.first_name} just wanted to wish you a happy new year! #{client.user.signature}")

    elsif today.strftime("%m/%d") == '11/27' && user.client.thanksgiving == true

    number_to_send_to = user.client.phone_number      
    account_sid = "AC19e48c08378c2682ce43952fc08ca94c"
    auth_token = "3a67fdc2e2d79a1bd640c700cd5cb9b0"
    twilio_phone_number = "(954)-228-8751"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
    @twilio_client.account.sms.messages.create(
    :from => "+1#{twilio_phone_number}",
    :to => number_to_send_to,
    :body => "Hi #{client.first_name} its #{client.user.first_name} just wanted to wish you a happy Thanksgiving! #{client.user.signature}")
        
    elsif today.strftime("%m/%d") == '07/04' && user.client.fourth_of_july == true

    number_to_send_to = user.client.phone_number      
    account_sid = "AC19e48c08378c2682ce43952fc08ca94c"
    auth_token = "3a67fdc2e2d79a1bd640c700cd5cb9b0"
    twilio_phone_number = "(954)-228-8751"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
    @twilio_client.account.sms.messages.create(
    :from => "+1#{twilio_phone_number}",
    :to => number_to_send_to,
    :body => "Hi #{client.first_name} its #{client.user.first_name} just wanted to wish you a 4th of July! #{client.user.signature}")

  elsif user.client.happy_holidays == true

    number_to_send_to = user.client.phone_number      
    account_sid = "AC19e48c08378c2682ce43952fc08ca94c"
    auth_token = "3a67fdc2e2d79a1bd640c700cd5cb9b0"
    twilio_phone_number = "(954)-228-8751"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
    @twilio_client.account.sms.messages.create(
    :from => "+1#{twilio_phone_number}",
    :to => number_to_send_to,
    :body => "Hi #{client.first_name} its #{client.user.first_name} happy holidays! #{client.user.signature}")

	     end
      end
    end
  end

