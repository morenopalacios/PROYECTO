class IncapacidadsController < ApplicationController
  
  before_action :set_incapacidad, only: [:show, :edit, :update, :destroy]


 def estadistica
   @tipo = params[:grafica] 
   @ano = Hash.new
   @t1 = Incapacidad.estadistica_x_trimestre("2014-01-01", "2014-03-30")
   @t2 = Incapacidad.estadistica_x_trimestre("2014-04-01", "2014-06-30")
   @t3 = Incapacidad.estadistica_x_trimestre("2014-07-01", "2014-09-30")
   @t4 = Incapacidad.estadistica_x_trimestre("2014-10-01", "2014-12-31")
   @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
   @datos= { :size => '700x400',
            :theme => :thirty7signals, 
            :title => "Accidente por trimestre", 
            :bg => 'efefef', 
            :line_colors => 'B22222,0077CC, FFA500',
            :legend => @ano.keys,
            :data => @ano.values,
            :axis_range => [nil, [0,200,400,600,800,1000]],
            :axis_with_labels => 'x,y',
            :labels => @ano.values }
 end





def index
      @incapacidads = Incapacidad.search(params[:search], params[:page]).order(:fechainicio , 'fechainicio ASC')

  respond_to do |format|
    format.html
    format.csv { send_data @incapacidads.to_csv }
    format.xls { send_data @incapacidads.to_csv(col_sep: "\t") }
  end
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
    params.require(:incapacidad).permit(:funcionario_id, :tipoincapacidad_id, :fechainicio, :fechaterminacion, :totaldias, :diasacobrar, :prorroga, :numeroinpacacidad, :esp, :origendelaincapacidad) 
  end 

 
end 




  