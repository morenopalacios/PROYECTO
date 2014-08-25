class IncapacidadsController < ApplicationController
  
  before_action :set_incapacidad, only: [:show, :edit, :update, :destroy]

 
  def index
        @incapacidads = Incapacidad.search(params[:search], params[:page]) 
  end 
 
  def show 
  end 
 
  def new 
        @incapacidad = Incapacidad.new 
  end 
 
  def edit 
  end 
 
  def create 
       @incapacidad = Incapacidad.new(incapacidad_params) 
       render action: :new unless @incapacidad.save 
  end 
 
  def update 
        render action: :edit unless @incapacidad.update_attributes(incapacidad_params) 
  end 
 
  def destroy 
       @incapacidad.destroy 
  end 
 
  private 
  # Use callbacks to share common setup or constraints between actions. 
  def set_incapacidad
       @incapacidad = Incapacidad.find(params[:id]) 
  end 
 
  # Never trust parameters from the scary internet, only allow the white list through. 
  def incapacidad_params         
    params.require(:incapacidad).permit(:funcionario_id, :fechainicio, :fechaterminacion, :totaldias, :diasacobrar, :prorroga, :numeroinpacacidad, :esp, :origendelaincapacidad) 
  end 

 
end 




  