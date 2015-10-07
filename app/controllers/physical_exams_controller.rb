class PhysicalExamsController < ApplicationController
  # before_action :set_physical_exam, only: [:show, :edit, :update, :destroy]
  before_action :set_member
  # GET /physical_exams
  # GET /physical_exams.json
  def index
    @physical_exams = @patient.physical_exams.all
  end

  # GET /physical_exams/1
  # GET /physical_exams/1.json
  def show
  end

  # GET /physical_exams/new
  def new
    @physical_exam = PhysicalExam.new
  end

  # GET /physical_exams/1/edit
  def edit
  end

  # POST /physical_exams
  # POST /physical_exams.json
  def create
    @physical_exam = PhysicalExam.new(physical_exam_params)
    @physical_exam.patient_id = @patient.id



    respond_to do |format|
      if @physical_exam.save
        format.html { redirect_to new_patient_additional_information_path, notice: 'Physical exam was successfully created.' }
        format.json { render :show, status: :created, location: @physical_exam }
      else
        format.html { render :new }
        format.json { render json: @physical_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_exams/1
  # PATCH/PUT /physical_exams/1.json
  def update
    respond_to do |format|
      if @physical_exam.update(physical_exam_params)
        format.html { redirect_to patient_physical_exams_path(@patient, @physical_exam), notice: 'Physical exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_exam }
      else
        format.html { render :edit }
        format.json { render json: @physical_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_exams/1
  # DELETE /physical_exams/1.json
  def destroy
    @physical_exam.destroy
    respond_to do |format|
      format.html { redirect_to patient_physical_exams_path(@patient, @physical_exam), notice: 'System review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    def set_member
      @patient = Patient.find(params[:patient_id])
      @physical_exam = PhysicalExam.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_exam_params
      params.require(:physical_exam).permit(:ta_mmgh, :heart_rate, :breathing_frequency, :sat_of_o_ambiente, :sat_of_o_supplementary, :temperature, :weight, :in, :kilograms, :height_in_centimeters, :glucose, :measurement, :head, :head_description, :sense_organ, :sense_organ_description, :neck, :neck_description, :rib_cage, :rib_cage_description, :heart, :heart_description, :lungs, :lungs_description, :abdomen, :abdomen_description, :genitourinary, :genitourinary_description, :rectum, :rectum_description, :extremities, :extremities_description, :skin_and_appendages, :skin_and_appendages_description, :skeletal_muscle, :skeletal_muscle_description, :mental, :mental_description, :neurological, :neurological_description, :alteration, :eye_opening, :verbal_answer, :motor_response, :other_signs)
    end
end
