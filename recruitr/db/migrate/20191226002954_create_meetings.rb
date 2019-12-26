class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :description
      t.datetime :starts_on
      t.datetime :ends_on
      t.references :participant, null: false, foreign_key: true
      t.references :recruiter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
