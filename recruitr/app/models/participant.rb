class Participant < ApplicationRecord
    before_save :assign_recruiter
    has_one :available_position, dependent: :nullify
    has_one :meeting, dependent: :destroy
    belongs_to :recruiter, optional: true
    accepts_nested_attributes_for :available_position

    def assign_recruiter
        if (self.recruiter.nil?)
            @recruiters = Recruiter.all
            self.recruiter = @recruiters.sample
        end
    end
end
