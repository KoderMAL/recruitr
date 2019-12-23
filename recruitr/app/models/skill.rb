class Skill < ApplicationRecord
    attr_accessor :content
    belongs_to :available_position, optional: true
    # belongs_to :participant
    # belongs_to :recruiter
    validates_presence_of :content
end
