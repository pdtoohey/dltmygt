class RemoveStrokeIdAddStrokeNumberFromGolves < ActiveRecord::Migration
  def change
    remove_column :golves, :stroke_id, :integer
    add_column :golves, :stroke_number, :string
  end
end
