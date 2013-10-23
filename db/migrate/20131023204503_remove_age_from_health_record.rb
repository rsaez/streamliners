class RemoveAgeFromHealthRecord < ActiveRecord::Migration
  def change
  		remove_column :health_records, :age 
  end
end
