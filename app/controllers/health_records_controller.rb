class HealthRecordsController < ApplicationController
  def new
    @health_record = HealthRecord.new 
  end
  
  def show
  end
  
  def create
    @health_record = HealthRecord.new(health_record_params)

    
      if @health_record.save
        redirect_to @health_record       
     end
  end
  

  def health_record_params
      params.require(:health_record).permit(:relevant_information, :age, :height, :weight, :blood_pressure, :hemoglobin, :hearing_test, :hearing_result_left, :hearing_result_right, :hearing_rescreening, :hearing_comments, :vision_test,:vision_acuity_right,:vision_acuity_left,:vision_rescreening,:vision_color,:vision_comments)
  end

end
