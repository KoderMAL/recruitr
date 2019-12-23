class AvailablePosition < ApplicationRecord
    attr_accessor :title, :skills_attributes
    validates :title, presence: true, length: { minimum: 3 }
    # belongs_to :participant
    has_many :skills, foreign_key: :available_position_id
    accepts_nested_attributes_for :skills, :allow_destroy => true #, :reject_if => lambda { |a| a[:content].blank? }
end
