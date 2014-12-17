class RemoveCatchOrderIdFromYellowtails < ActiveRecord::Migration
  def change
    remove_column :yellowtails, :catch_order_id
  end
end
