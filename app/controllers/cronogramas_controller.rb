class CronogramasController < ApplicationController
  before_action :set_cronograma, only: [:show, :edit, :update, :destroy]

  # GET /cronogramas
  # GET /cronogramas.json
  def index
   @cronogramas = Cronograma.search(params[:search], params[:page])   end

  # GET /cronogramas/1
  # GET /cronogramas/1.json
  def show

  end

  # GET /cronogramas/new
  def new
    @cronograma = Cronograma.new
  end

  # GET /cronogramas/1/edit
  def edit
    
  end

  # POST /cronogramas
  # POST /cronogramas.json
  def create
    @cronograma = Cronograma.new(cronograma_params)
    render action: :new unless @cronograma.save
  end
  

  # PATCH/PUT /cronogramas/1
  # PATCH/PUT /cronogramas/1.json
  def update
    render action: :edit unless @cronograma.update(cronograma_params)
  end

  # DELETE /cronogramas/1
  # DELETE /cronogramas/1.json
  def destroy
    @cronograma.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cronograma
      @cronograma = Cronograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cronograma_params
      #PUEDE SER QUE AQUI HAYA UN ERROR YA QUE APARECE METODO NOMBRE NO DEFINIDO
      params.require(:cronograma).permit(:fecha,:lugar_salida,:ficha_grupo, :tipo_salida_id,:programa,:descripcion)
    end
end
