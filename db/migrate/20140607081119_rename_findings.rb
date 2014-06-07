class RenameFindings < ActiveRecord::Migration
  def change
  	rename_table :findings, :assessment
  	rename_table :health_records, :vitals
  	rename_table :physical_exams, :physical
  end
end
