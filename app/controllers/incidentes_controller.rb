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
     
    respond_to do |format|
      if @incidente.save
        format.html { redirect_to @incidente, notice: 'incidente was successfully created.' }
        format.json { render :show, status: :created, location: @incidente }
      else
        format.html { render :new }
        format.json { render json: @incidente.errors, status: :unprocessable_entity }
      end
    end
  end
 

  def update
    respond_to do |format|
      if @incidente.update(incidente_params)
        format.html { redirect_to @incidente, notice: 'incidente was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidente }
      else
        format.html { render :edit }
        format.json { render json: @incidente.errors, status: :unprocessable_entity }
      end
    end
  end

 
 
 
  def destroy 
       @incidente.destroy 
       respond_to do |format|
          format.html { redirect_to incidentes_path, notice: 'incidente was successfully destroy.' }
          format.json { render :show, status: :ok, location: @incidente }
          
       end 
    
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







