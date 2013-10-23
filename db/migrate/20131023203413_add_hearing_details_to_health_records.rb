class AddHearingDetailsToHealthRecords < ActiveRecord::Migration
  def change
    add_column :health_records, :hearing_result_right_2, :string
    add_column :health_records, :hearing_result_left_3, :string
    add_column :health_records, :hearing_result_right_3, :string
  end
end
