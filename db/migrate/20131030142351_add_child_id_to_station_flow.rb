class AddChildIdToStationFlow < ActiveRecord::Migration
  def change
    add_column :station_flows, :child_id, :string
  end
end
