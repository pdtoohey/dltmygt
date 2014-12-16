class CreateYellowtails < ActiveRecord::Migration
  def change
    create_table :yellowtails do |t|
      t.integer :attendee_id
      t.integer :tournament_id
      t.integer :fishing_day_id
      t.integer :catch_order_id
      t.integer :yellowtail_weight

      t.timestamps
    end
  end
end
