class AvailablePosition < ApplicationRecord
    attribute :applications_count, :integer, default: 0
    belongs_to :participant, optional: true
    has_many :skills, dependent: :nullify
    accepts_nested_attributes_for :skills, :allow_destroy => true
    validates_presence_of :content
end
