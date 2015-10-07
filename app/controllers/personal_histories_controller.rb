class PersonalHistoriesController < ApplicationController
  
  before_action :set_member

  # GET /clinic_histories
  # GET /clinic_histories.json
  def index
    @personal_histories = @patient.personal_histories.all
  end

  # GET /personal_histories/1
  # GET /personal_histories/1.json
  def show
  end

  # GET /personal_histories/new
  def new
    @personal_history = PersonalHistory.new
  end

  # GET /personal_histories/1/edit
  def edit
  end

  # POST /personal_histories
  # POST /personal_histories.json
  def create
    @personal_history = PersonalHistory.new(personal_history_params)
    @personal_history.patient_id = @patient.id

    respond_to do |format|
      if @personal_history.save
        format.html { redirect_to new_patient_system_review_path, notice: 'Personal history was successfully created.' }
        format.json { render :show, status: :created, location: @personal_history }
      else
        format.html { render :new }
        format.json { render json: @personal_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_histories/1
  # PATCH/PUT /personal_histories/1.json
  def update
    respond_to do |format|
      if @personal_history.update(personal_history_params)
        format.html { redirect_to clinic_personal_histories_path(@patient, @personal_history), notice: 'clinic_history actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @personal_history }
      else
        format.html { render :edit }
        format.json { render json: @personal_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_histories/1
  # DELETE /personal_histories/1.json
  def destroy
    @personal_history.destroy
    respond_to do |format|
      format.html { redirect_to patient_personal_histories_path(@patient, @personal_history), notice: 'Historia Clinica Eliminada Correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @patient = Patient.find(params[:patient_id])
      @personal_history = PersonalHistory.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_history_params
      params.require(:personal_history).permit(:neunatales, :neunatales_description, :patologicos, :patologicos_description, :quirurgicos, :quirurgicos_description, :farmacologicos, :farmacologicos_description, :alergicos, :alergicos_description, :toxicos, :toxicos_description, :traumaticos, :traumaticos_description, :hospitables, :hospitables_description, :atep_laboral, :atep_laboral_description, :familiar, :familiar_description, :inmunologicos, :inmunologios_description, :asociado_viajes_de_vuelo, :asociado_viajes_de_vuelo_description, :menstrual_cycle, :gestational_age, :eco, :fum, :pregnancy, :g, :p, :c, :a, :m, :v, :e)
    end
end
