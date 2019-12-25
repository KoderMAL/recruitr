class Skill < ApplicationRecord
  belongs_to :available_position, optional: true
  belongs_to :participant, optional: true
  validates :content, :uniqueness => { :case_sensitive => false }
  validates_presence_of :content
end
