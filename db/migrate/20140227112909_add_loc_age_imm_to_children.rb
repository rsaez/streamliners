class AddLocAgeImmToChildren < ActiveRecord::Migration
  def change
    add_column :children, :location, :string
    add_column :children, :age_years, :integer
    add_column :children, :age_month, :integer
    add_column :children, :age_total_months, :integer
    add_column :children, :immunization_utd, :boolean
    add_column :children, :absences, :integer
  end
end
