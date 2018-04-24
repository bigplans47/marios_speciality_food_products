class UserMailer < ApplicationMailer
  default from: 'flowfast47@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @greeting = "Hi"
    @user = user
    puts @user
    mail to: user.email
  end
end
