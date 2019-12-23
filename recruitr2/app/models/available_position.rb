class AvailablePosition < ApplicationRecord
    attribute :applications_count, :integer, default: 0
    belongs_to :participant, optional: true
    has_many :skills, dependent: :delete_all
    accepts_nested_attributes_for :skills, :allow_destroy => true
end
