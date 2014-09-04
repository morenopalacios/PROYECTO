class TipoincidentesController < ApplicationController
  before_action :set_tipoincidente, only: [:show, :edit, :update, :destroy]

  # GET /tipoincidentes
  # GET /tipoincidentes.json
  def index
    @tipoincidentes = Tipoincidente.all
  end

  # GET /tipoincidentes/1
  # GET /tipoincidentes/1.json
  def show
  end

  # GET /tipoincidentes/new
  def new
    @tipoincidente = Tipoincidente.new
  end

  # GET /tipoincidentes/1/edit
  def edit
  end

  # POST /tipoincidentes
  # POST /tipoincidentes.json
  def create
    @tipoincidente = Tipoincidente.new(tipoincidente_params)

    respond_to do |format|
      if @tipoincidente.save
        format.html { redirect_to @tipoincidente, notice: 'Tipoincidente was successfully created.' }
        format.json { render :show, status: :created, location: @tipoincidente }
      else
        format.html { render :new }
        format.json { render json: @tipoincidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoincidentes/1
  # PATCH/PUT /tipoincidentes/1.json
  def update
    respond_to do |format|
      if @tipoincidente.update(tipoincidente_params)
        format.html { redirect_to @tipoincidente, notice: 'Tipoincidente was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipoincidente }
      else
        format.html { render :edit }
        format.json { render json: @tipoincidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoincidentes/1
  # DELETE /tipoincidentes/1.json
  def destroy
    @tipoincidente.destroy
    respond_to do |format|
      format.html { redirect_to tipoincidentes_url, notice: 'Tipoincidente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoincidente
      @tipoincidente = Tipoincidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoincidente_params
      params.require(:tipoincidente).permit(:nombre)
    end
end
