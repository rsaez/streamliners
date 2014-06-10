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
      params.require(:finding).permit(:created_at, :updated_at, :child_id, :well_child_check, :findings_01, :findings_02, :findings_03, :findings_04, :findings_05, :findings_06, :findings_07, :findings_08, :findings_09, :findings_10, :follow_up_01, :follow_up_02, :follow_up_03, :follow_up_04, :follow_up_05, :follow_up_06, :follow_up_07, :follow_up_08, :follow_up_09, :follow_up_10, :text, :guidance, :chart_complete, :np_signature, :faculty_signature, :other_np_signature)
    end
end
