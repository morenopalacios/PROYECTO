class EnfermedadsController < ApplicationController
  before_action :set_enfermedad, only: [:show, :edit, :update, :destroy]

 def estadistica
    @tipo = params[:grafica] 
    @fano = params[:fano]
     @ano = Hash.new
     @t1 = Enfermedad.estadistica_x_trimestre(@fano + "-01-01", @fano + "-03-30")
     @t2 = Enfermedad.estadistica_x_trimestre(@fano + "-04-01", @fano + "-06-30")
     @t3 = Enfermedad.estadistica_x_trimestre(@fano + "-07-01",@fano + "-09-30")
     @t4 = Enfermedad.estadistica_x_trimestre(@fano + "-10-01",@fano + "-12-31")
   @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
   @datos= { :size => '700x400',
            :theme => :thirty7signals, 
            :title => "enfermedad por trimestre", 
            :bg => 'efefef', 
            :line_colors => 'B22222,0077CC, FFA500',
            :legend => @ano.keys,
            :data => @ano.values,
            :axis_range => [nil, [0,200,400,600,800,1000]],
            :axis_with_labels => 'x,y',
            :labels => @ano.values }
 end

 

def index
  @enfermedads = Enfermedad.search(params[:search], params[:page]).order('fecha ASC') 
  respond_to do |format|
    format.html
    format.csv { send_data @enfermedads.to_csv }
    format.xls  { send_data @enfermedads.to_csv(col_sep: "\t") }
  end
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

























