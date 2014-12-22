class AddTitleToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :title, :string
  end
end
