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

ActiveRecord::Schema.define(version: 20131024052229) do

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
    t.string   "vision_acuity_both"
    t.string   "hearing_result_right_2"
    t.string   "hearing_result_left_3"
    t.string   "hearing_result_right_3"
    t.string   "hearing_result_left_2"
    t.integer  "well_child_exam"
    t.integer  "no_parent"
    t.integer  "systolic1"
    t.integer  "diastolic1"
    t.integer  "systolic2"
    t.integer  "diastolic2"
    t.integer  "systolic3"
    t.integer  "diastolic3"
    t.integer  "bmi"
    t.integer  "blood_sugar"
    t.string   "vision_acuity_right_2"
    t.string   "vision_acuity_left_2"
    t.string   "vision_acuity_both_2"
    t.string   "vision_acuity_right_3"
    t.string   "vision_acuity_left_3"
    t.string   "vision_acuity_both_3"
    t.integer  "too_young"
    t.integer  "too_young_bloodsugar"
    t.integer  "too_young_hemoglobin"
    t.integer  "too_young_audiometry"
    t.integer  "too_young_vision"
    t.integer  "child_id"
  end

  create_table "physical_exams", force: true do |t|
    t.string   "general_appearance"
    t.text     "general_appearance_c"
    t.string   "posture"
    t.text     "posture_c"
    t.string   "speech"
    t.text     "speech_c"
    t.string   "head"
    t.text     "head_c"
    t.string   "skin"
    t.text     "skin_c"
    t.string   "eyes_external_aspects"
    t.text     "eyes_external_aspects_c"
    t.string   "eyes_optic_fundiscopic"
    t.text     "eyes_optic_fundiscopic_c"
    t.string   "eyes_cover_test"
    t.text     "eyes_cover_test_c"
    t.string   "ears_external"
    t.text     "ears_external_c"
    t.string   "ears_tympanic"
    t.text     "ears_tympanic_c"
    t.string   "nose"
    t.text     "nose_c"
    t.string   "teeth"
    t.text     "teeth_c"
    t.string   "heart"
    t.text     "heart_c"
    t.string   "lungs"
    t.text     "lungs_c"
    t.string   "abdomen"
    t.text     "abdomen_c"
    t.string   "bones"
    t.text     "bones_c"
    t.string   "scoliosis_gross_motor"
    t.text     "scoliosis_gross_motor_c"
    t.string   "scoliosis_fine_motor"
    t.text     "scoliosis_fine_motor_c"
    t.string   "scoliosis_comm_skill"
    t.text     "scoliosis_comm_skill_c"
    t.string   "scoliosis_cognitive"
    t.text     "scoliosis_cognitive_c"
    t.string   "scoliosis_self_help"
    t.text     "scoliosis_self_help_c"
    t.string   "scoliosis_social_skills"
    t.text     "scoliosis_social_skills_c"
    t.string   "glandis"
    t.text     "glandis_c"
    t.string   "muscular_coord"
    t.text     "muscular_coord_c"
    t.string   "other"
    t.text     "other_c"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"
  add_index "users", ["user_name"], name: "index_users_on_user_name", unique: true

end
