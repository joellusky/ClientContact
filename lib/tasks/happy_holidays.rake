namespace :text do
	desc "send happy holidays text to client"
	task happy_holidays: :environment do
		Client.all.each do |client|
			User.client.each do |user|
				if user.client.happy_holidays == true

		number_to_send_to = user.client.phone_number			
		account_sid = "AC19e48c08378c2682ce43952fc08ca94c"
		auth_token = "3a67fdc2e2d79a1bd640c700cd5cb9b0"
		twilio_phone_number = "(954)-228-8751"

		@twilio_client = Twilio::REST::Client.new account_sid, auth_token
		@twilio_client.account.sms.messages.create(
			:from => "+1#{twilio_phone_number}",
			:to => number_to_send_to,
			:body => "Hi, #{current_user.client} this is #{current_user.first_name} just wanted to wish you a happy weekend Beu!")
	end
end
