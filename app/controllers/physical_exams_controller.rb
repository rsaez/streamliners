class PhysicalExamsController < ApplicationController
  

  def new
    @physical_exam = PhysicalExam.new 
  end
  
  def show
  end
  
  def create
    @physical_exam = PhysicalExam.new(physical_exam_params)

    
      if @physical_exam.save
        redirect_to @physical_exam       
     end
  end
  

  def physical_exam_params
      params.require(:physical_exam).permit(:general_appearance,:general_appearance_c, :posture,:posture_c, :speech,:speech_c, :head,:head_c, :skin,:skin_c,:eyes_external_aspects,:eyes_external_aspects_c,:eyes_optic_fundiscopic,:eyes_optic_fundiscopic_c,:eyes_cover_test ,:eyes_cover_test_c,:ears_external,:ears_external_c, :ears_tympanic,:ears_tympanic_c, :nose,:nose_c, :teeth, :teeth_c, :heart,:heart_c, :lungs,:lungs_c,:abdomen,:abdomen_c,:bones,:bones_c,:scoliosis_gross_motor,:scoliosis_gross_motor_c,:scoliosis_fine_motor,:scoliosis_fine_motor_c,:scoliosis_comm_skill,:scoliosis_comm_skill_c,:scoliosis_cognitive,:scoliosis_cognitive_c,:scoliosis_self_help,:scoliosis_self_help_c,:scoliosis_social_skills,:scoliosis_social_skills_c,:glandis,:glandis_c,:muscular_coord,:muscular_coord_c,:other,:other_c)
  end

end

