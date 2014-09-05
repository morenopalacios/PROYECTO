class TipoaccidentesController < ApplicationController
  before_action :set_tipoaccidente, only: [:show, :edit, :update, :destroy]

  # GET /tipoaccidentes
  # GET /tipoaccidentes.json
  def index
    @tipoaccidentes = Tipoaccidente.all
  end

  # GET /tipoaccidentes/1
  # GET /tipoaccidentes/1.json
  def show
  end

  # GET /tipoaccidentes/new
  def new
    @tipoaccidente = Tipoaccidente.new
  end

  # GET /tipoaccidentes/1/edit
  def edit
  end

  # POST /tipoaccidentes
  # POST /tipoaccidentes.json
  def create
    @tipoaccidente = Tipoaccidente.new(tipoaccidente_params)

    respond_to do |format|
      if @tipoaccidente.save
        format.html { redirect_to @tipoaccidente, notice: 'Registro creadoado exitosamente.' }
        format.json { render :show, status: :created, location: @tipoaccidente }
      else
        format.html { render :new }
        format.json { render json: @tipoaccidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoaccidentes/1
  # PATCH/PUT /tipoaccidentes/1.json
  def update
    respond_to do |format|
      if @tipoaccidente.update(tipoaccidente_params)
        format.html { redirect_to @tipoaccidente, notice: 'Registro actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @tipoaccidente }
      else
        format.html { render :edit }
        format.json { render json: @tipoaccidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoaccidentes/1
  # DELETE /tipoaccidentes/1.json
  def destroy
    @tipoaccidente.destroy
    respond_to do |format|
      format.html { redirect_to tipoaccidentes_url, notice: 'Registro eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoaccidente
      @tipoaccidente = Tipoaccidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoaccidente_params
      params.require(:tipoaccidente).permit(:nombre)
    end
end
