class CreateScoreCards < ActiveRecord::Migration[6.0]
  def change
    create_table :score_cards do |t|
      t.integer :dynamism
      t.integer :interest
      t.integer :experience
      t.integer :overall
      t.references :participant, null: false, foreign_key: true
      t.references :recruiter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
