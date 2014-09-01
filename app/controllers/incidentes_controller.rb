class IncidentesController < ApplicationController 
  #Incluimos el módulo definido en lib/models/grafica.rb
 
  before_action :set_incidente, only: [:show, :edit, :update, :destroy] 
 
  def estadistica
     @ano = Hash.new
     @t1 = Incidente.estadistica_x_trimestre("2014-04-01", "2014-06-30")
     @t2 = Incidente.estadistica_x_trimestre("2014-04-01", "2014-06-30")
     @t3 = Incidente.estadistica_x_trimestre("2014-07-01", "2014-09-30")
     @t4 = Incidente.estadistica_x_trimestre("2014-10-01", "2014-12-31")
     @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
  end
 
  def index 
      @incidentes = Incidente.search(params[:search], params[:page]).order('fecha_del_reporte ASC')
  end 
 
  def show 
  end 
 
  def new 
        @incidente = Incidente.new 
  end 
 
  def edit 
  end 
 
  def create 
       @incidente = Incidente.new(incidente_params) 
       render action: :new unless @incidente.save 
  end 
 
  def update 
        render action: :edit unless @incidente.update_attributes(incidente_params) 
  end 
 
  def destroy 
       @incidente.destroy 
  end 
 
  private 
  # Use callbacks to share common setup or constraints between actions. 
  def set_incidente 
       @incidente = Incidente.find(params[:id]) 
  end 
 
  # Never trust parameters from the scary internet, only allow the white list through. 
  def incidente_params         
    params.require(:incidente).permit(:centro_id, :area_o_proceso, :lugar_de_ocurrencia, :fecha_del_reporte, :hora_del_reporte, :funcionario_id, :personalinvolucrado_id, :otro, :especifique, :nombre_completo1, :email1, :telefono1, :nombre_completo2, :email2, :telefono2, :descripcion_del_evento, :nombre_del_dilenciador, :nombre_de_lider_de_informe) 
  end 

 
end 







