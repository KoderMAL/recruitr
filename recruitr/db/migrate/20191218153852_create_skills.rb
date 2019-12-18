class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :content
      t.integer :available_position_id

      t.timestamps
    end
  end
end
