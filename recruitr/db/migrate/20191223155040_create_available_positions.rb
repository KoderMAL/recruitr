class CreateAvailablePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :available_positions do |t|
      t.string :content
      t.integer :applications_count

      t.timestamps
    end
  end
end
