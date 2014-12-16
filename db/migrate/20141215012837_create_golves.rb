class CreateGolves < ActiveRecord::Migration
  def change
    create_table :golves do |t|
      t.integer :attendee_id
      t.integer :tournament_id
      t.integer :stroke_id
      t.integer :stroke_score

      t.timestamps
    end
  end
end
