class RiesgosController  < ApplicationController 
  
  before_action :set_riesgo, only: [:show, :edit, :update, :destroy] 
 
 def estadistica
   @ano = Hash.new
   @t1 = Riesgo.estadistica_x_trimestre("2014-01-01", "2014-03-30")
   @t2 = Riesgo.estadistica_x_trimestre("2014-04-01", "2014-06-30")
   @t3 = Riesgo.estadistica_x_trimestre("2014-07-01", "2014-09-30")
   @t4 = Riesgo.estadistica_x_trimestre("2014-10-01", "2014-12-31")
   @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
 end

 
  def index 
    @riesgos = Riesgo.search(params[:search], params[:page]).order('fecha ASC') 
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
































