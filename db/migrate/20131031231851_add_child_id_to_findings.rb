class AddChildIdToFindings < ActiveRecord::Migration
  def change
    add_column :findings, :child_id, :integer
  end
end
