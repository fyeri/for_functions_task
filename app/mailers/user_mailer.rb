class UserMailer < ApplicationMailer
  default from: 'admin@example.com'
  layout 'mailer'

  def registration_confirmation(user)
    @user = user
    mail(to: @user.email, subject: '登録完了').deliver_later
  end
end
