# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131015080544) do

  create_table "children", force: true do |t|
    t.string   "name"
    t.string   "school"
    t.string   "gender"
    t.date     "DOB"
    t.integer  "age"
    t.string   "address"
    t.boolean  "no_parent_present"
    t.boolean  "parental_permission_given"
    t.boolean  "allergies"
    t.text     "allergies_info"
    t.text     "immunization_review"
    t.text     "relevant_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "findings", force: true do |t|
    t.text     "diagnosis_treatment"
    t.string   "faculty_signature"
    t.date     "faculty_sig_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "health_records", force: true do |t|
    t.string   "date"
    t.string   "datetime"
    t.text     "relevant_information"
    t.string   "age"
    t.integer  "height"
    t.integer  "weight"
    t.string   "blood_pressure"
    t.string   "hemoglobin"
    t.string   "hearing_test"
    t.string   "hearing_result_left"
    t.string   "hearing_result_right"
    t.string   "hearing_rescreening"
    t.text     "hearing_comments"
    t.string   "vision_test"
    t.string   "vision_acuity_right"
    t.string   "vision_acuity_left"
    t.string   "vision_rescreening"
    t.string   "vision_color"
    t.text     "vision_comments"
    t.text     "physical_therapy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
