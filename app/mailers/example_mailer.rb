class ExampleMailer < ActionMailer::Base
	# default from: "dbtsui@gmail.com"
	default from: "joeroerskawaii@gmail.com"

	def sample_email(user)
		@user = user
		mail(to: @user.email, subject: "Gem Test!")
	end
end
