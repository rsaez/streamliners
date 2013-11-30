class FindingsController < ApplicationController

  def new
    @finding = Finding.new
  end

  def show
     @finding = Finding.find(params[:id])
  end

  def edit
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
        @finding.update_attributes(:diagnosis_treatment => params["finding"]["diagnosis_treatment"])
        flash[:success] = "Record saved successfully"
        redirect_to children_path
     end
  end

    
    def finding_params
      params.require(:finding).permit(:child_id, :diagnosis_treatment, :faculty_signature, :faculty_sig_date, :finding_a, :finding_b, :finding_c, :finding_d, :treatment_a, :treatment_b, :treatment_c, :treatment_d )
    end
end
