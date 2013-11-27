class HealthRecordsController < ApplicationController
  def new
    @health_record = HealthRecord.new 
  end
  
  def show
    @health_record = HealthRecord.find(params[:id])
  end
  
  def edit
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
      params.require(:health_record).permit(:systolic1,:diastolic1,:height_feet,:height_inches,:child_id, :relevant_information, :age, :height, :weight, :blood_pressure, :hemoglobin, :hearing_test, :hearing_result_left, :hearing_result_right, :hearing_rescreening, :hearing_comments, :vision_test,:vision_acuity_right,:vision_acuity_left,:vision_rescreening,:vision_color,:vision_comments)
  end

end
