class CreateAttendeesTournaments < ActiveRecord::Migration
  def change
    create_table :attendees_tournaments do |t|
      t.integer :attendee_id
      t.integer :tournament_id
    end
  end
end
