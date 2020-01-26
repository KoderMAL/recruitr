class Meeting < ApplicationRecord
  after_save :send_mail_to_meeting_tenants

  belongs_to :participant
  belongs_to :recruiter

  def send_mail_to_meeting_tenants
    p self
  end
end
