class Participant < ApplicationRecord
    before_save :assign_recruiter
    has_one :available_position, dependent: :nullify
    has_one :meeting, dependent: :destroy
    has_many :score_cards, dependent: :destroy
    belongs_to :recruiter, optional: true
    accepts_nested_attributes_for :available_position

    def assign_recruiter
        if (self.recruiter.nil?)
            @recruiters = Recruiter.all
            self.recruiter = @recruiters.sample
        end
    end

    def calculate_average_score
        @average = self.score_cards.reduce(0) {|sum, x| sum + x[:overall]}.round()
    end
end
