class PhysicalExamsController < ApplicationController
  

  def new
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end

  def newphysicali
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end

  def newphysicali
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end
  
  def show
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.find(params[:id])
  end

  def physicali
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end

  def physicalii
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end
 
  def edit
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.find(params[:id])
  end

  def editphysicali
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end
  
  def editphysicalii
    if !signed_in?
      redirect_to root_path
    end
    @physical_exam = PhysicalExam.new 
  end

  def update
  @physical_exam = PhysicalExam.find(params[:id])
      if @physical_exam.update_attributes(health_record_params)

        flash[:success] = "Record updated successfully"
        redirect_to children_path
      else
        render 'edit'
      end
  end
  def create
    @physical_exam = PhysicalExam.new(physical_exam_params)

    
      if @physical_exam.save
        flash[:success] = "Record saved successfully"
        redirect_to children_path
     end
  end
  

  def physical_exam_params
      params.require(:physical_exam).permit(:created_at, :updated_at, :child_id, :general_appearance, :general_appearance_c, :head, :head_c, :skin, :skin_c, :eyes, :eyes_c, :ears, :ears_c, :nose, :nose_c, :mouth, :mouth_c, :throat, :throat_c, :thyroid, :thyroid_c, :lymph_all_normal, :lymph_pre_auricular, :lymph_post_auricular, :lymph_anterior_cervical, :lymph_posterior_cervical, :lymph_occipital, :lymph_axillary, :lymph_c, :vascular, :vascular_c, :heart, :heart_c, :lungs, :lungs_c, :abdomen, :abdomen_c, :musculoskeletal, :musculoskeletal_c, :scoliosis, :scoliosis_c, :neuro, :neuro_c)
  end

end

