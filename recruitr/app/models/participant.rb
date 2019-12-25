class Participant < ApplicationRecord
    before_save :assign_recruiter
    has_one :available_position, dependent: :nullify
    belongs_to :recruiter, optional: true
    accepts_nested_attributes_for :available_position

    def assign_recruiter
        @recruiters = Recruiter.all
        p self
        self.recruiter = @recruiters.sample
    end
end
