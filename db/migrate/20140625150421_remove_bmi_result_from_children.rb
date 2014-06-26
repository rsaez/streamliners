class RemoveBmiResultFromChildren < ActiveRecord::Migration
  def change
    remove_column :children, :bmi_result, :integer
    add_column :children, :bmi_result, :float
    add_column :children, :form_id_number, :integer
  end
end
