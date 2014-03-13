class RemoveAgeagain < ActiveRecord::Migration
  def change
  	remove_column :children, :age
  	remove_column :children, :address
  end
end