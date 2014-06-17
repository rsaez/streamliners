class HealthRecordsController < ApplicationController
  def new
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.new 
  end

  def newhearing
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.new 
  end

  def newvision
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

  def hearing
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.find(params[:id])
  end

  def vision
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

  def edithearing
    if !signed_in?
      redirect_to root_path
    end
    @health_record = HealthRecord.find(params[:id])
  end

  def editvision
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
      params.require(:health_record).permit(:created_at, :updated_at, :child_id, :hearing_hz_left_1, :hearing_db_left_1, :ear_left_pass_1, :hearing_hz_right_1, :hearing_db_right_1, :ear_right_pass_1, :hearing_hz_left_2, :hearing_db_left_2, :ear_left_pass_2, :hearing_hz_right_2, :hearing_db_right_2, :ear_right_pass_2, :hearing_hz_left_3, :hearing_db_left_3, :ear_left_pass_3, :hearing_hz_right_3, :hearing_db_right_3, :ear_right_pass_3, :hearing_comments, :vision_acuity_left_1, :vision_acuity_right_1, :vision_acuity_both_1, :vision_acuity_right_2, :vision_acuity_left_2, :vision_acuity_both_2, :vision_acuity_right_3, :vision_acuity_left_3, :vision_acuity_both_3, :vision_color_blindness, :cover_test_left, :cover_test_right, :cover_test_both, :wears_corrective_lenses, :vision_comments)
  end

end