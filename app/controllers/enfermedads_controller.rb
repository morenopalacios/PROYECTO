class EnfermedadsController < ApplicationController
  before_action :set_enfermedad, only: [:show, :edit, :update, :destroy]

 def estadistica
   @tipo = params[:grafica] 
   
   @ano = Hash.new
   @t1 = Enfermedad.estadistica_x_trimestre("2014-01-01", "2014-03-30")
   @t2 = Enfermedad.estadistica_x_trimestre("2014-04-01", "2014-06-30")
   @t3 = Enfermedad.estadistica_x_trimestre("2014-07-01", "2014-09-30")
   @t4 = Enfermedad.estadistica_x_trimestre("2014-10-01", "2014-12-31")
   @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
   @datos= { :size => '700x400',
            :theme => :thirty7signals, 
            :title => "enfermedad por trimestre", 
            :bg => 'EFF5FF', 
            :line_colors => 'B22222,0077CC, FFA500',
            :legend => @ano.keys,
            :data => @ano.values,
            :axis_range => [nil, [0,10,20,30,40,50,60,70,80,90,100]],
            :axis_with_labels => 'x,y',
            :labels => @ano.values }
 end

 
  

  def index 
    @enfermedads = Enfermedad.search(params[:search], params[:page]).order('fecha ASC') 
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
    params.require(:enfermedad).permit(:funcionario_id, :tipoenfermedad_id, :descripcion, :fecha, :codigodediagnostico) 
  end 

 
end 

























