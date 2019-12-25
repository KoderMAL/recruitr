class AddParticipantToAvailablePositions < ActiveRecord::Migration[6.0]
  def change
    add_reference :available_positions, :participant, foreign_key: true
  end
end
