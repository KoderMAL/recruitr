class Skill < ApplicationRecord
  belongs_to :available_position, optional: true
  belongs_to :participant, optional: true
  validates_presence_of :content
end
