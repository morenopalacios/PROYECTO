class TipoSalidasController < ApplicationController
  before_action :set_tipo_salida, only: [:show, :edit, :update, :destroy]

  # GET /tipo_salidas
  # GET /tipo_salidas.json
  def index
    @tipo_salidas = TipoSalida.search(params[:search], params[:page])
  end

  # GET /tipo_salidas/1
  # GET /tipo_salidas/1.json
  def show
  end

  # GET /tipo_salidas/new
  def new
    @tipo_salida = TipoSalida.new
  end

  # GET /tipo_salidas/1/edit
  def edit
  end

  # POST /tipo_salidas
  # POST /tipo_salidas.json
  def create
    @tipo_salida = TipoSalida.new(tipo_salida_params)

    respond_to do |format|
      if @tipo_salida.save
        format.html { redirect_to @tipo_salida, notice: 'Tipo salida se creó con éxito.' }
        format.json { render :show, status: :created, location: @tipo_salida }
      else
        format.html { render :new }
        format.json { render json: @tipo_salida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_salidas/1
  # PATCH/PUT /tipo_salidas/1.json
  def update
    respond_to do |format|
      if @tipo_salida.update(tipo_salida_params)
        format.html { redirect_to @tipo_salida, notice: 'Tipo salida fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @tipo_salida }
      else
        format.html { render :edit }
        format.json { render json: @tipo_salida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_salidas/1
  # DELETE /tipo_salidas/1.json
  def destroy
    @tipo_salida.destroy
    respond_to do |format|
      format.html { redirect_to tipo_salidas_url, notice: 'Tipo salida fue eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_salida
      @tipo_salida = TipoSalida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_salida_params
      params.require(:tipo_salida).permit(:nombre)
    end
end
