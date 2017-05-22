class ReparationsController < ApplicationController
  before_action :set_reparation, only: [:show, :edit, :update, :destroy]

  # GET /reparations
  # GET /reparations.json
  def index
    @reparations = Reparation.all
  end

  # GET /reparations/1
  # GET /reparations/1.json
  def show
  end

  # GET /reparations/new
  def new
    @reparation = Reparation.new
  end

  # GET /reparations/1/edit
  def edit
  end

  # POST /reparations
  # POST /reparations.json
  def create
    @reparation = Reparation.new(reparation_params)

    respond_to do |format|
      if @reparation.save
        format.html { redirect_to @reparation, notice: 'Reparation was successfully created.' }
        format.json { render :show, status: :created, location: @reparation }
      else
        format.html { render :new }
        format.json { render json: @reparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reparations/1
  # PATCH/PUT /reparations/1.json
  def update
    respond_to do |format|
      if @reparation.update(reparation_params)
        format.html { redirect_to @reparation, notice: 'Reparation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reparation }
      else
        format.html { render :edit }
        format.json { render json: @reparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reparations/1
  # DELETE /reparations/1.json
  def destroy
    @reparation.destroy
    respond_to do |format|
      format.html { redirect_to reparations_url, notice: 'Reparation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reparation
      @reparation = Reparation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reparation_params
      params.require(:reparation).permit(:user_id, :cproduct_id, :Description, :FechaI, :FechaF, :PrecioBase, :PrecioFinal)
    end
end
