class RemoveAge < ActiveRecord::Migration
  def change
  	remove_column :children, :DOB
  end
end
