class Skill < ApplicationRecord
    attr_accessor :content, :available_position_id
    belongs_to :available_position
    # belongs_to :participant
    # belongs_to :recruiter
    validates_presence_of :content
end
