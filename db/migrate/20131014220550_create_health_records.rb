class CreateHealthRecords < ActiveRecord::Migration
  def change
    create_table :health_records do |t|
      t.string :date
      t.string :datetime
      t.text :relevant_information
      t.string :age
      t.integer :height
      t.integer :weight
      t.string :blood_pressure
      t.string :hemoglobin
      t.string :hearing_test
      t.string :hearing_result_left
      t.string :hearing_result_right
      t.string :hearing_rescreening
      t.text :hearing_comments
      t.string :vision_test
      t.string :vision_acuity_right
      t.string :vision_acuity_left
      t.string :vision_rescreening
      t.string :vision_color
      t.text :vision_comments
      t.text :physical_therapy

      t.timestamps
    end
  end
end
