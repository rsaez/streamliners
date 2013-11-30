class AddGeneralStatement < ActiveRecord::Migration
  def change
    add_column :findings, :general_statement, :text
    add_column :findings, :signature, :string
    add_column :findings, :sig_date, :date
    add_column :findings, :finding_a, :text
    add_column :findings, :finding_b, :text
    add_column :findings, :finding_c, :text
    add_column :findings, :finding_d, :text
    add_column :findings, :treatment_a, :text
    add_column :findings, :treatment_b, :text
    add_column :findings, :treatment_c, :text
    add_column :findings, :treatment_d, :text
    
  end
end
