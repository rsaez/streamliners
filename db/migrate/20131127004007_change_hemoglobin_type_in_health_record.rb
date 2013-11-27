class ChangeHemoglobinTypeInHealthRecord < ActiveRecord::Migration
  def change
    change_column :health_records, :hemoglobin, :float
  end
end
