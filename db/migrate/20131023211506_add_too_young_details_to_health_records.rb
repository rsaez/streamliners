class AddTooYoungDetailsToHealthRecords < ActiveRecord::Migration
  def change
    add_column :health_records, :too_young, :integer
    add_column :health_records, :too_young_bloodsugar, :integer
    add_column :health_records, :too_young_hemoglobin, :integer
    add_column :health_records, :too_young_audiometry, :integer
    add_column :health_records, :too_young_vision, :integer
  end
end
