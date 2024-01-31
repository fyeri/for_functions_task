class MailJob < ApplicationJob
  queue_as :default

  # def perform(*args)
  #   # Do something later
  # end
  
  def perform(user)
    # メール送信の処理を実装
    UserMailer.registration_confirmation(user).deliver_later
  end
end
