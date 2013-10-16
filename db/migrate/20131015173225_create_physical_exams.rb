class CreatePhysicalExams < ActiveRecord::Migration
  def change
    create_table :physical_exams do |t|
      t.string :general_appearance
     t.text :general_appearance_c
      
            t.string :posture
t.text :posture_c
     
      
      t.string :speech
t.text :speech_c
      
      
      t.string :head
      t.text :head_c
      
      
      t.string :skin
      t.text :skin_c
      
      t.string :eyes_external_aspects
t.text :eyes_external_aspects_c
      
      
      t.string :eyes_optic_fundiscopic
	t.text :eyes_optic_fundiscopic_c
      
      
      t.string :eyes_cover_test
	t.text :eyes_cover_test_c
      
      
      t.string :ears_external
	t.text :ears_external_c
      
      
      t.string :ears_tympanic
	t.text :ears_tympanic_c
      
      
      t.string :nose
	t.text :nose_c
      
      t.string :teeth
	t.text :teeth_c
      t.string:heart
	t.text:heart_c
      t.string :lungs
	t.text :lungs_c
      t.string :abdomen
	t.text :abdomen_c
      
      
      t.string :bones
	t.text :bones_c
      
      
      t.string :scoliosis_gross_motor
	t.text :scoliosis_gross_motor_c
      
      
      t.string :scoliosis_fine_motor
	t.text :scoliosis_fine_motor_c
      
      
      t.string :scoliosis_comm_skill
	t.text :scoliosis_comm_skill_c
      
      
      t.string :scoliosis_cognitive
	t.text :scoliosis_cognitive_c
      
      
      t.string :scoliosis_self_help
	t.text :scoliosis_self_help_c
      
      
      t.string :scoliosis_social_skills
	t.text :scoliosis_social_skills_c
      
            t.string :glandis
	t.text :glandis_c
      t.string :muscular_coord
	t.text :muscular_coord_c
      
      
      t.string :other
	t.text :other_c

      t.timestamps
    end
  end
end
