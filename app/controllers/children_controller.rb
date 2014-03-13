class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]

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

    @child.age_years = ageYears(@child)
    @child.age_months = ageMonths(@child)
    @child.age_total_months = ageTotalMonths(@child)
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

    @child.age_years = ageYears(@child)
    @child.age_months = ageMonths(@child)
    @child.age_total_months = ageTotalMonths(@child)
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
    return now.year - child.dob.year
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
      params.require(:child).permit(:name, :gender, :dob, :location, :age_years, :age_months, :age_total_months, :no_parent_present, :parental_permission_given, :allergies, :allergies_info, :immunization_utd, :dtap, :hib, :pneumovax, :hepa, :influenza, :mmr, :immunization_review, :relevant_information, :absences)
    end
end
