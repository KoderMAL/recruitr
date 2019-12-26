class Meeting < ApplicationRecord
  belongs_to :participant
  belongs_to :recruiter
end
