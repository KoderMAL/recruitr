class Recruiter < ApplicationRecord
    has_many :participants, dependent: :nullify
    has_many :meetings, dependent: :destroy
    accepts_nested_attributes_for :participants
end
