class RemoveAgemonth < ActiveRecord::Migration
  def change
  	remove_column :children, :age_month
  	add_column :children, :dob, :date
  	add_column :children, :age_months, :integer
  end
end
