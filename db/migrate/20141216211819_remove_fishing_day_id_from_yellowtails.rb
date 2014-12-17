class RemoveFishingDayIdFromYellowtails < ActiveRecord::Migration
  def change
    remove_column :yellowtails, :fishing_day_id
  end
end
