class RemoveDob < ActiveRecord::Migration
  def change
  	remove_column :children, :school  	
  end
end