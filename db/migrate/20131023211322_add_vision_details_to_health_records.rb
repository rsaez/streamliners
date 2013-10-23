class AddVisionDetailsToHealthRecords < ActiveRecord::Migration
  def change
    add_column :health_records, :vision_acuity_right_2, :string
    add_column :health_records, :vision_acuity_left_2, :string
    add_column :health_records, :vision_acuity_both_2, :string
    add_column :health_records, :vision_acuity_right_3, :string
    add_column :health_records, :vision_acuity_left_3, :string
    add_column :health_records, :vision_acuity_both_3, :string
  end
end
