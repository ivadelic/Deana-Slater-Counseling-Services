class Admin < ActiveRecord::Base
  has_secure_password

  has_one :home
  has_one :about
  has_one :resource
  has_one :faq

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super # Use whatever other message
    end
  end

   after_create :send_admin_mail
  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval(self).deliver
  end
end