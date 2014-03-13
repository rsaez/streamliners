class RemoveAbsences < ActiveRecord::Migration
  def change
  	remove_column :children, :absences
  	add_column :children, :absences, :text
  end
end
