class ScoreCard < ApplicationRecord
  belongs_to :participant
  belongs_to :recruiter
end
