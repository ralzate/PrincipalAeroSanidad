class SystemReviewsController < ApplicationController
  # before_action :set_system_review, only: [:show, :edit, :update, :destroy]
  before_action :set_member

  # GET /system_reviews
  # GET /system_reviews.json
  def index
    @system_reviews = @patient.system_reviews.all
  end

  # GET /system_reviews/1
  # GET /system_reviews/1.json
  def show
  end

  # GET /system_reviews/new
  def new
    @system_review = SystemReview.new
  end

  # GET /system_reviews/1/edit
  def edit
  end

  # POST /system_reviews
  # POST /system_reviews.json
  def create
    @system_review = SystemReview.new(system_review_params)
    @system_review.patient_id = @patient.id

    respond_to do |format|
      if @system_review.save
        format.html { redirect_to new_patient_physical_exam_path, notice: 'System review was successfully created.' }
        format.json { render :show, status: :created, location: @system_review }
      else
        format.html { render :new }
        format.json { render json: @system_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_reviews/1
  # PATCH/PUT /system_reviews/1.json
  def update
    respond_to do |format|
      if @system_review.update(system_review_params)
        format.html { redirect_to patient_system_reviews_path(@patient, @system_review), notice: 'System review was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_review }
      else
        format.html { render :edit }
        format.json { render json: @system_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_reviews/1
  # DELETE /system_reviews/1.json
  def destroy
    @system_review.destroy
    respond_to do |format|
      format.html { redirect_to patient_system_reviews_path(@patient, @system_review), notice: 'System review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @patient = Patient.find(params[:patient_id])
      @system_review = SystemReview.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_review_params
      params.require(:system_review).permit(:cardiovascular, :cardiovascular_description, :respiratory, :abdominal, :abdominal_description, :genito_urinario, :genito_urinario_description, :neurological, :neurological_description, :mental, :mental_description, :sense_organ, :sense_organ_description, :skeletal_muscle, :skeletal_muscle_description, :skin_and_appendages, :skin_and_appendages_description)
    end
end

  
