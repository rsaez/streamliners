class CreateFindings < ActiveRecord::Migration
  def change
    create_table :findings do |t|
      t.text :diagnosis_treatment
      t.string :faculty_signature
      t.date :faculty_sig_date

      t.timestamps
    end
  end
end
