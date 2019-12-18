class AvailablePosition < ApplicationRecord
    belongs_to :participant
    has_many :skills
    accepts_nested_attributes_for :skills, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
