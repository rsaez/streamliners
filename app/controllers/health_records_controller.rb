class HealthRecordsController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]

  def new
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.new 
  end
  
  def show
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.find(params[:id])
  end
  
  def edit
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.find(params[:id])
  end
  
  def update
  @health_record = HealthRecord.find(params[:id])
      if @health_record.update_attributes(health_record_params)

        flash[:success] = "Record updated successfully"
        redirect_to children_path
      else
        render 'edit'
      end
  end
  
  def create
    @health_record = HealthRecord.new(health_record_params)
    
         
      if @health_record.save
        flash[:success] = "Record saved successfully"
        redirect_to children_path
      else
        render 'new'
     end
  end
  

  def health_record_params
      params.require(:health_record).permit(:relevant_information,:blood_pressure,:hemoglobin,:hearing_test,:hearing_rescreening,:hearing_comments,:vision_test,:vision_rescreening,:vision_color,:vision_comments,:created_at,:updated_at,:hearing_result_right_2,:hearing_result_left_3,:hearing_result_right_3,:hearing_result_left_2,:well_child_exam,:no_parent,:systolic1,:diastolic1,:systolic2,:diastolic2,:systolic3,:diastolic3,:blood_sugar,:vision_acuity_right_2,:vision_acuity_left_2,:vision_acuity_both_2,:vision_acuity_right_3,:vision_acuity_left_3,:vision_acuity_both_3,:too_young,:too_young_bloodsugar,:too_young_hemoglobin,:too_young_audiometry,:too_young_vision,:child_id,:height_feet,:height_inches,:height_total_inches,:height_total_cm,:weight_lbs,:weight_oz,:bmi_result,:blood_glucose,:hearing_result_left_1,:hearing_result_right_1,:ear_form_decibel_test_1,:ear_form_decibel_test_2,:ear_form_decibel_test_3,:vision_acuity_left_1,:vision_acuity_right_1,:vision_acuity_both_1,:wears_corrective_lenses)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_child
    @child = Child.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def child_params
    params.require(:child).permit(:name, :gender, :dob, :location, :age_years, :age_months, :age_total_months, :no_parent_present, :parental_permission_given, :allergies, :allergies_info, :immunization_utd, :dtap, :hib, :pneumovax, :hepa, :influenza, :mmr, :immunization_review, :relevant_information, :absences)
  end

end