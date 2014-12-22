class UpdateYellotailTable < ActiveRecord::Migration
  def change
    rename_column :yellowtails, :yellowtail_weight, :weight
  end
end
