class AddColumnHeightFeetAndHeightInchesToHealthRecord < ActiveRecord::Migration
  def change
    add_column :health_records, :height_feet, :integer
    add_column :health_records, :height_inches, :integer
  end
end
