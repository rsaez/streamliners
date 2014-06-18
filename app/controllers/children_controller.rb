class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :vitals, :hearing, :vision, :physicali, :physicalii, :assessment,:edit, :editchild, :editvitals, :edithearing, :editvision, :editphysicali, :editphysicalii, :editassessment, :update, :destroy]

  # GET /children
  # GET /children.json
  def index
    if !signed_in?
      redirect_to root_path
    end
    @children = Child.all
    if !params[:search].nil?
      @result = Child.search(params[:search])
    end
    if @result.nil? && params[:search].nil?
      @result = Child.all
    end	    
  end

  # GET /children/1
  # GET /children/1.json
  def show
    if !signed_in?
      redirect_to root_path
    end

    if !@child.dob.blank?
      @child.age_years = ageYears(@child)
      @child.age_months = ageMonths(@child)
      @child.age_total_months = ageTotalMonths(@child)
    end

  end

  # GET /children/1/vitals
  def vitals
    if !signed_in?
      redirect_to root_path
    end

  end

  def hearing
    if !signed_in?
      redirect_to root_path
    end

  end

  def vision
    if !signed_in?
      redirect_to root_path
    end

  end

  def physicali
    if !signed_in?
      redirect_to root_path
    end

  end

  def physicalii
    if !signed_in?
      redirect_to root_path
    end

  end

  def assessment
    if !signed_in?
      redirect_to root_path
    end

  end

  # GET /children/new
  def new
    if !signed_in?
      redirect_to root_path
    end  
    @child = Child.new
  end

  # GET /children/1/edit
  def edit
    if !signed_in?
      redirect_to root_path
    end
  end
  
  # GET /children/1/editchild
  def editchild
    if !signed_in?
      redirect_to root_path
    end
    
  end

  # GET /children/1/editvitals
  def editvitals
    if !signed_in?
      redirect_to root_path
    end
    
  end

  def edithearing
    if !signed_in?
      redirect_to root_path
    end
  end

  def editvision
    if !signed_in?
      redirect_to root_path
    end
  end

  def editphysicali
    if !signed_in?
      redirect_to root_path
    end
  end

  def editpysicalii
    if !signed_in?
      redirect_to root_path
    end
  end

  def editassessment
    if !signed_in?
      redirect_to root_path
    end
  end

  # POST /children
  # POST /children.json
  def create
    @child = Child.new(child_params)
    
    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'Child was successfully created.' }
        format.json { render action: 'show', status: :created, location: @child }
      else
        format.html { render action: 'new' }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /children/1
  # PATCH/PUT /children/1.json
  def update
    respond_to do |format|
      if @child.update(child_params)
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def destroy
    @child.destroy
    respond_to do |format|
      format.html { redirect_to children_url }
      format.json { head :no_content }
    end
  end
  
  def ageYears(child)
    now = Time.now.utc.to_date
    return now.year - 
    child.dob.year
  end

  def ageMonths(child)
    return child.dob.month
  end

  def ageTotalMonths(child)
    return ((child.age_years*12)+child.age_months)
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_params
      params.require(:child).permit(:created_at, :updated_at, :last_name, :first_name, :gender, :dob, :age_years, :age_months, :age_total_months, :location, :no_parent_present, :parental_permission_given, :allergies, :allergies_information, :immunization_utd, :dtap, :hib, :pneumovax, :hepa, :hepb, :influenza, :mmr, :immunization_needed, :revelant_information, :absences, :height_feet, :height_inches, :height_total_inches, :height_total_cm, :weight_lbs, :weight_oz, :weight_kg, :bmi_result, :bmi_percentile, :systolic_1, :diastolic_1, :systolic_2, :diastolic_2, :systolic_3, :diastolic_3, :hemoglobin, :blood_glucose, :hearing_hz_left_1, :hearing_db_left_1, :ear_left_pass_1, :hearing_hz_right_1, :hearing_db_right_1, :ear_right_pass_1, :hearing_hz_left_2, :hearing_db_left_2, :ear_left_pass_2, :hearing_hz_right_2, :hearing_db_right_2, :ear_right_pass_2, :hearing_hz_left_3, :hearing_db_left_3, :ear_left_pass_3, :hearing_hz_right_3, :hearing_db_right_3, :ear_right_pass_3, :hearing_comments, :vision_acuity_left_1, :vision_acuity_right_1, :vision_acuity_both_1, :vision_acuity_right_2, :vision_acuity_left_2, :vision_acuity_both_2, :vision_acuity_right_3, :vision_acuity_left_3, :vision_acuity_both_3, :vision_color_blindness, :cover_test_left, :cover_test_right, :cover_test_both, :wears_corrective_lenses, :vision_comments, :general_appearance, :general_appearance_c, :head, :head_c, :skin, :skin_c, :eyes, :eyes_c, :ears, :ears_c, :nose, :nose_c, :mouth, :mouth_c, :throat, :throat_c, :thyroid, :thyroid_c, :lymph_all_normal, :lymph_pre_auricular, :lymph_post_auricular, :lymph_anterior_cervical, :lymph_posterior_cervical, :lymph_occipital, :lymph_axillary, :lymph_c, :vascular, :vascular_c, :heart, :heart_c, :lungs, :lungs_c, :abdomen, :abdomen_c, :musculoskeletal, :musculoskeletal_c, :scoliosis, :scoliosis_c, :neuro, :neuro_c, :well_child_check, :findings_01, :findings_02, :findings_03, :findings_04, :findings_05, :findings_06, :findings_07, :findings_08, :findings_09, :findings_10, :follow_up_01, :follow_up_02, :follow_up_03, :follow_up_04, :follow_up_05, :follow_up_06, :follow_up_07, :follow_up_08, :follow_up_09, :follow_up_10, :text, :guidance, :chart_complete, :np_signature, :faculty_signature, :other_np_signature)
    end
end