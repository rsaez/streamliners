class RemoveAbsencesFromChildren < ActiveRecord::Migration
  def change
    remove_column :children, :absences, :text
  end
end
