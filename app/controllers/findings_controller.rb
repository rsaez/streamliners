class FindingsController < ApplicationController

  def new
    if !signed_in?
      redirect_to root_path
    end
    @finding = Finding.new
  end

  def show
    if !signed_in?
      redirect_to root_path
    end
     @finding = Finding.find(params[:id])
  end

  def edit
    if !signed_in?
      redirect_to root_path
    end
    @finding = Finding.find(params[:id])
  end

  def update
    @finding = Finding.find(params[:id])
      if @finding.update_attributes(finding_params)

        flash[:success] = "Record updated successfully"
        redirect_to children_path
      else
        render 'edit'
      end
  end

  def create
    @finding = Finding.new(finding_params)
    
         
      if @finding.save
    
        flash[:success] = "Record saved successfully"
        redirect_to children_path
      else
        render 'new'
      end
  end

    
    def finding_params
      params.require(:finding).permit(:child_id, :diagnosis_treatment, :faculty_signature, :faculty_sig_date, :finding_a, :finding_b, :finding_c, :finding_d, :treatment_a, :treatment_b, :treatment_c, :treatment_d, :general_statement, :signature, :sig_date)
    end
end
