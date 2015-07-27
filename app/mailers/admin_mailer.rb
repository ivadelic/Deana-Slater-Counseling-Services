class AdminMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_user_waiting_for_approval(admin)
    @admin = admin
    @url  = 'http://example.com/login'
    mail(to: "deanaslatertherapy@gmail.com", subject: 'NEW ADMIN')
  end
end
