class FindingsController < ApplicationController
  before_action :set_finding, only: [:show, :edit, :update, :destroy]

  # GET /findings
  # GET /findings.json
  def index
    @findings = Finding.all
  end

  # GET /findings/1
  # GET /findings/1.json
  def show
  end

  # GET /findings/new
  def new
    @finding = Finding.new
  end

  # GET /findings/1/edit
  def edit
  end

  # POST /findings
  # POST /findings.json
  def create
    @finding = Finding.new(finding_params)
    respond_to do |format|
      if @finding.save
        format.html { redirect_to @finding, notice: 'Finding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @finding }
      else
        format.html { render action: 'new' }
        format.json { render json: @finding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /findings/1
  # PATCH/PUT /findings/1.json
  def update
    respond_to do |format|
      if @finding.update(finding_params)
        format.html { redirect_to @finding, notice: 'Finding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @finding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /findings/1
  # DELETE /findings/1.json
  def destroy
    @finding.destroy
    respond_to do |format|
      format.html { redirect_to findings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finding
      @finding = Finding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finding_params
      params.require(:finding).permit(:diagnosis_treatment, :faculty_signature, :faculty_sig_date)
    end
end
