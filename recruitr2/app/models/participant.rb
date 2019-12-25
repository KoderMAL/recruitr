class Participant < ApplicationRecord
    has_one :available_position
    accepts_nested_attributes_for :available_position
    # has_one :recruiter
end
