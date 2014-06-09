class RenameAssessment < ActiveRecord::Migration
  def change
  	rename_table :assessment, :findings
  	rename_table :vitals, :health_records
  	rename_table :physical, :physical_exams
  end
end
