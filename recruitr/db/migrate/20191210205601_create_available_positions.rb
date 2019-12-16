class CreateAvailablePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :available_positions do |t|
      t.string :title
      t.string :skills, array:true, default: [].to_json
      t.numeric :number_of_applicants

      t.timestamps
    end
  end
end
