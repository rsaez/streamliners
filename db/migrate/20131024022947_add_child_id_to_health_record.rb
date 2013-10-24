class AddChildIdToHealthRecord < ActiveRecord::Migration
  def change
    add_column :health_records, :child_id, :integer
  end
end
