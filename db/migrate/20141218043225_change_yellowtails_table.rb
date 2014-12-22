class ChangeYellowtailsTable < ActiveRecord::Migration
  def change
    remove_column :yellowtails, :fishing_day, :string
    add_column :yellowtails, :fishing_day, :integer
    add_column :yellowtails, :catch_number, :integer
  end
end
