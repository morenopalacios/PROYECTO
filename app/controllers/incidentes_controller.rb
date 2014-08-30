class IncidentesController < ApplicationController 
  
  before_action :set_incidente, only: [:show, :edit, :update, :destroy] 
 

 
  def index 
        @incidentes = Incidente.search(params[:search], params[:page]) 
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







