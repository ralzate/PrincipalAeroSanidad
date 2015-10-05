class EpsesController < ApplicationController
  before_action :set_eps, only: [:show, :edit, :update, :destroy]

  # GET /epses
  # GET /epses.json
  def index
    @epses = Eps.all
  end

  # GET /epses/1
  # GET /epses/1.json
  def show
  end

  # GET /epses/new
  def new
    @eps = Eps.new
  end

  # GET /epses/1/edit
  def edit
  end

  # POST /epses
  # POST /epses.json
  def create
    @eps = Eps.new(eps_params)

    respond_to do |format|
      if @eps.save
        format.html { redirect_to @eps, notice: 'Eps was successfully created.' }
        format.json { render :show, status: :created, location: @eps }
      else
        format.html { render :new }
        format.json { render json: @eps.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epses/1
  # PATCH/PUT /epses/1.json
  def update
    respond_to do |format|
      if @eps.update(eps_params)
        format.html { redirect_to @eps, notice: 'Eps was successfully updated.' }
        format.json { render :show, status: :ok, location: @eps }
      else
        format.html { render :edit }
        format.json { render json: @eps.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epses/1
  # DELETE /epses/1.json
  def destroy
    @eps.destroy
    respond_to do |format|
      format.html { redirect_to epses_url, notice: 'Eps was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eps
      @eps = Eps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eps_params
      params.require(:eps).permit(:name)
    end
end
