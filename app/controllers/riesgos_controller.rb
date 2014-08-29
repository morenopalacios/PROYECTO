class RiesgosController  < ApplicationController 
  
  before_action :set_riesgo, only: [:show, :edit, :update, :destroy] 
 

 
  def index 
        @riesgos = Riesgo.search(params[:search], params[:page]) 
  end 
 
  def show 
  end 
 
  def new 
        @riesgo = Riesgo.new 
  end 
 
  def edit 
  end 

  def create
     
     @riesgo = Riesgo.new(riesgo_params) 

    respond_to do |format|
      if @riesgo.save
        format.html { redirect_to @riesgo, notice: 'riesgo was successfully created.' }
        format.json { render :show, status: :created, location: @riesgo }
      else
        format.html { render :new }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end



 
def update
    respond_to do |format|
      if @riesgo.update(riesgo_params)
        format.html { redirect_to @riesgo, notice: 'riesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @riesgo }
      else
        format.html { render :edit }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end
  
 
def destroy 
      @riesgo.destroy 
       respond_to do |format|
          format.html { redirect_to incidentes_path, notice: 'riesgo was successfully destroy.' }
          format.json { render :show, status: :ok, location: @riesgo }
          
       end 
    
  end 
 

  private 
  # Use callbacks to share common setup or constraints between actions. 
  def set_riesgo 
       @riesgo = Riesgo.find(params[:id]) 
  end 
 
  # Never trust parameters from the scary internet, only allow the white list through. 
  def riesgo_params         
    params.require(:riesgo).permit(:empresa, :funcionario_id, :fecha, :areadeseccionopuestodetrabajo, :clasederiesgo, :factorderiesgo, :fuentegeneradora, :efectoconocido, :numerodeexpuestos, :tiempo, :controlesexitentes, :controlesrecomendados, :consecuencia, :exposicion, :factordeponderacion, :repercuciondelriesgo) 
  end 

 
end 
































