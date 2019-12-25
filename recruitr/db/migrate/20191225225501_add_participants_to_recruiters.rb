class AddParticipantsToRecruiters < ActiveRecord::Migration[6.0]
  def change
    add_reference :recruiters, :participant, foreign_key: true
  end
end
