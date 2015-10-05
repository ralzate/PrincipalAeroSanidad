class ArlesController < ApplicationController
  before_action :set_arl, only: [:show, :edit, :update, :destroy]

  # GET /arles
  # GET /arles.json
  def index
    @arles = Arl.all
  end

  # GET /arles/1
  # GET /arles/1.json
  def show
  end

  # GET /arles/new
  def new
    @arl = Arl.new
  end

  # GET /arles/1/edit
  def edit
  end

  # POST /arles
  # POST /arles.json
  def create
    @arl = Arl.new(arl_params)

    respond_to do |format|
      if @arl.save
        format.html { redirect_to @arl, notice: 'Arl was successfully created.' }
        format.json { render :show, status: :created, location: @arl }
      else
        format.html { render :new }
        format.json { render json: @arl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arles/1
  # PATCH/PUT /arles/1.json
  def update
    respond_to do |format|
      if @arl.update(arl_params)
        format.html { redirect_to @arl, notice: 'Arl was successfully updated.' }
        format.json { render :show, status: :ok, location: @arl }
      else
        format.html { render :edit }
        format.json { render json: @arl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arles/1
  # DELETE /arles/1.json
  def destroy
    @arl.destroy
    respond_to do |format|
      format.html { redirect_to arles_url, notice: 'Arl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arl
      @arl = Arl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arl_params
      params.require(:arl).permit(:name)
    end
end
