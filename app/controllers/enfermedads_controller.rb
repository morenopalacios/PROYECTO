class EnfermedadsController < ApplicationController
  before_action :set_enfermedad, only: [:show, :edit, :update, :destroy]
 
  def index 
        @enfermedads = Enfermedad.search(params[:search], params[:page]) 
  end 
 
  def show 
  end 
 
  def new 
        @enfermedad = Enfermedad.new 
  end 
 
  def edit 
  end 
 
  def create 
       @enfermedad = Enfermedad.new(enfermedad_params) 
       render action: :new unless @enfermedad.save 
  end 
 
  def update 
        render action: :edit unless @enfermedad.update_attributes(enfermedad_params) 
  end 
 
  def destroy 
       @enfermedad.destroy 
  end 
 
  private 
  # Use callbacks to share common setup or constraints between actions. 
  def set_enfermedad
       @enfermedad = Enfermedad.find(params[:id]) 
  end 
 
  # Never trust parameters from the scary internet, only allow the white list through. 
  def enfermedad_params         
    params.require(:enfermedad).permit(:funcionario_id, :descripcion, :fecha, :codigodediagnostico) 
  end 

 
end 

























