class AddIntakeDetailsToHealthRecords < ActiveRecord::Migration
  def change
    add_column :health_records, :hearing_result_left_2, :string
    add_column :health_records, :well_child_exam, :integer
    add_column :health_records, :no_parent, :integer
    add_column :health_records, :systolic1, :integer
    add_column :health_records, :diastolic1, :integer
    add_column :health_records, :systolic2, :integer
    add_column :health_records, :diastolic2, :integer
    add_column :health_records, :systolic3, :integer
    add_column :health_records, :diastolic3, :integer
    add_column :health_records, :bmi, :integer
    add_column :health_records, :blood_sugar, :integer
  end
end
