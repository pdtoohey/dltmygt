class AddFishingDayToYellowtails < ActiveRecord::Migration
  def change
    add_column :yellowtails, :fishing_day, :string
  end
end
