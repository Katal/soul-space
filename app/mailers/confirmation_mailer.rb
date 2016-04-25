class ConfirmationMailer < ApplicationMailer
	default from: "soulspacedev@gmail.com"

	#need to confirm if URL is sign-up or sign-in
	def welcome(user)
		@user = user
		@url = 'http://soul-space.heroku.com/sign-up'
		mail(to: @user.email, subject: 'Welcome to Soul Space: Sign-up Confirmation')
	end


end
