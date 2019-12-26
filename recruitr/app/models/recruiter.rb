class Recruiter < ApplicationRecord
    has_many :participants, dependent: :nullify
    has_many :meetings, dependent: :destroy
    has_many :score_cards, dependent: :nullify
    accepts_nested_attributes_for :participants
end
