class AddVisionBothToHealthRecord < ActiveRecord::Migration
  def change
    add_column :health_records, :vision_acuity_both, :string
  end
end
