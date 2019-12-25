class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :content
      t.reference :available_position, foreign_key: true

      t.timestamps
    end
  end
end
