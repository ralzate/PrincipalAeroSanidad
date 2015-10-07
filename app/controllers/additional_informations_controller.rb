class AdditionalInformationsController < ApplicationController
  # before_action :set_additional_information, only: [:show, :edit, :update, :destroy]
  before_action :set_member

  # GET /additional_informations
  # GET /additional_informations.json
  def index
    @additional_informations = @patient.additional_informations.all
  end

  # GET /additional_informations/1
  # GET /additional_informations/1.json
  def show
  end

  # GET /additional_informations/new
  def new
    @additional_information = AdditionalInformation.new
  end

  # GET /additional_informations/1/edit
  def edit
  end

  # POST /additional_informations
  # POST /additional_informations.json
  def create
    @additional_information = AdditionalInformation.new(additional_information_params)
    @additional_information.patient_id = @patient.id


    respond_to do |format|
      if @additional_information.save
        format.html { redirect_to patients_path, notice: 'Additional information was successfully created.' }
        format.json { render :show, status: :created, location: @additional_information }
      else
        format.html { render :new }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @personal_history.update(personal_history_params)
        format.html { redirect_to patient_additional_informations_path(@patient, @additional_information), notice: 'clinic_history actualizada satisfactoriamente.' }
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
      format.html { redirect_to patient_additional_informations_path(@patient, @additional_information), notice: 'Historia Clinica Eliminada Correctamente.' }
      format.json { head :no_content }
    end
  end



  private

    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @patient = Patient.find(params[:patient_id])
      @additional_information = AdditionalInformation.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additional_information_params
      params.require(:additional_information).permit(:analysis, :print_diagnosed, :plan_and_treatment, :observations_recommendations)
    end
end
