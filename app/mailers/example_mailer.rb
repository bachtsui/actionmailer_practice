class ExampleMailer < ActionMailer::Base
	default from: "joeroerskawaii@gmail.com"

	def sample_email(user)
		@user = user
		mail(to: @user.email, subject: "Test Email")
	end
end
