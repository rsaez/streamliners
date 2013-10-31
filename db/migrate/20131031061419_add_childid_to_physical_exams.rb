class AddChildidToPhysicalExams < ActiveRecord::Migration
  def change
    add_column :physical_exams, :child_id, :integer
  end
end
