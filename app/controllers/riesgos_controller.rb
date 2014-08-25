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
       render action: :new unless @riesgo.save 
  end 
 
  def update 
        render action: :edit unless @riesgo.update_attributes(riesgo_params) 
  end 
 
  def destroy 
       @riesgo.destroy 
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
































