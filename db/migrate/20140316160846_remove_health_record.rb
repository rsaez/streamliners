class RemoveHealthRecord < ActiveRecord::Migration
  def change
  	remove_column :health_records, :date
  	remove_column :health_records, :datetime
  	remove_column :health_records, :relevant_information
  	remove_column :health_records, :height
  	remove_column :health_records, :weight
  	remove_column :health_records, :hearing_result_left
  	remove_column :health_records, :hearing_result_right
  	remove_column :health_records, :vision_acuity_right
  	remove_column :health_records, :vision_acuity_left
  	remove_column :health_records, :physical_therapy
  	remove_column :health_records, :vision_acuity_both
  	remove_column :health_records, :bmi
  	add_column :health_records, :height_total_inches, :integer
  	add_column :health_records, :height_total_cm, :integer
  	add_column :health_records, :weight_lbs, :integer
  	add_column :health_records, :weight_oz, :integer
  	add_column :health_records, :bmi_result, :integer
  	add_column :health_records, :blood_glucose, :integer
  	add_column :health_records, :hearing_result_left_1, :integer
  	add_column :health_records, :hearing_result_right_1, :integer
  	add_column :health_records, :ear_form_decibel_test_1, :integer
  	add_column :health_records, :ear_form_decibel_test_2, :integer
  	add_column :health_records, :ear_form_decibel_test_3, :integer
  	add_column :health_records, :vision_acuity_left_1, :integer
  	add_column :health_records, :vision_acuity_right_1, :integer
  	add_column :health_records, :vision_acuity_both_1, :integer
  	add_column :health_records, :wears_corrective_lenses, :string
  end
end
