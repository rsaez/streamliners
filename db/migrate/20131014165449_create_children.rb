class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :school
      t.string :gender
      t.date :DOB
      t.integer :age
      t.string :address
      t.boolean :no_parent_present
      t.boolean :parental_permission_given
      t.boolean :allergies
      t.text :allergies_info
      t.text :immunization_review
      t.text :relevant_information

      t.timestamps
    end
  end
end
