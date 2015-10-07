class ClinicHistoriesController < ApplicationController
  # before_action :set_clinic_history, only: [:show, :edit, :update, :destroy]
  # before_action :find_patient_clinic_history, except: [:show_divisiones]
  before_action :set_member

  # GET /clinic_histories
  # GET /clinic_histories.json
  def index
    @clinic_histories = @patient.clinic_histories.all
  end

  # GET /clinic_histories/1
  # GET /clinic_histories/1.json
  def show
  end

  # GET /clinic_histories/new
  def new
    @clinic_history = ClinicHistory.new
  end

  # GET /clinic_histories/1/edit
  def edit
  end

  # POST /clinic_histories
  # POST /clinic_histories.json
  def create
    @clinic_history = ClinicHistory.new(clinic_history_params)
    @clinic_history.patient_id = @patient.id

    respond_to do |format|
      if @clinic_history.save
        format.html { redirect_to new_patient_clinic_history_personal_history_path(@patient, @clinic_history), notice: 'Eps was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_history }
      else
        format.html { render :new }
        format.json { render json: @clinic_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_histories/1
  # PATCH/PUT /clinic_histories/1.json
  def update
    respond_to do |format|
      if @clinic_history.update(clinic_history_params)
        format.html { redirect_to patient_clinic_histories_path(@patient, @clinic_history), notice: 'clinic_history actualizada satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clinic_history.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @clinic_history.destroy
    respond_to do |format|
      format.html { redirect_to patient_clinic_histories_path(@patient, @clinic_history), notice: 'Historia Clinica Eliminada Correctamente.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @patient = Patient.find(params[:patient_id])
      @clinic_history = ClinicHistory.find(params[:id]) if params[:id]
    end

  # Never trust parameters from the scary internet, only allow the white list through.
  def clinic_history_params
    params.require(:clinic_history).permit(:city, :department, :user_id, :cove, :mobiel_service, :airport, :type_service, :patient_id, :origin, :destination, :company, :accompanist_name, :relationship, :phone, :reason_for_consultation, :current_illness)
  end
end