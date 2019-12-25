class Participant < ApplicationRecord
    before_save :assign_recruiter
    after_save :send_mail_to_meeting_tenants
    has_one :available_position, dependent: :nullify
    belongs_to :recruiter, optional: true
    accepts_nested_attributes_for :available_position

    def assign_recruiter
        if (self.recruiter.nil?)
            @recruiters = Recruiter.all
            self.recruiter = @recruiters.sample
        end
    end

    def send_mail_to_meeting_tenants
        p self
    end
end
