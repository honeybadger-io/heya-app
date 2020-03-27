class ConfirmationMailer < ApplicationMailer
  def build(user)
    @user = user
    mail(to: user.email, subject: "Please confirm your email address")
  end
end
