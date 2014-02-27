class AddVaccinesToChildren < ActiveRecord::Migration
  def change
    add_column :children, :dtap, :boolean
    add_column :children, :hib, :boolean
    add_column :children, :pneumovax, :boolean
    add_column :children, :hepa, :boolean
    add_column :children, :influenza, :boolean
    add_column :children, :mmr, :boolean
  end
end
