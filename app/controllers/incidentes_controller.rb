class IncidentesController < ApplicationController 
  #Incluimos el módulo definido en lib/models/grafica.rb
 
  before_action :set_incidente, only: [:show, :edit, :update, :destroy] 
 
   def estadistica

   @tipo = params[:grafica] 
   @ano = Hash.new
   @t1 = Incidente.estadistica_x_trimestre("2014-01-01", "2014-03-30")
   @t2 = Incidente.estadistica_x_trimestre("2014-04-01", "2014-06-30")
   @t3 = Incidente.estadistica_x_trimestre("2014-07-01", "2014-09-30")
   @t4 = Incidente.estadistica_x_trimestre("2014-10-01", "2014-12-31")
   @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
   @datos= { :size => '700x400',
            :theme => :thirty7signals, 
            :title => "Incidente por trimestre", 
            :bg => 'EFF5FF', 
            :line_colors => 'B22222,0077CC, FFA500',
            :legend => @ano.keys,
            :data => @ano.values,
            :axis_range => [nil, [0,10,20,30,40,50,60,70,80,90,100]],
            :axis_with_labels => 'x,y',
            :labels => @ano.values }



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
     
    respond_to do |format|
      if @incidente.save
        format.html { redirect_to @incidente, notice: 'El registro fue creado exitosamente.' }
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
        format.html { redirect_to @incidente, notice: 'El registro fue actualizado exitosamente.' }
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
          format.html { redirect_to incidentes_path, notice: 'El registro fue eliminado exitosamente.' }
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
    params.require(:incidente).permit(:tipoincidente_id, :area_o_proceso, :lugar_de_ocurrencia, :fecha_del_reporte, :hora_del_reporte, :funcionario_id, :personalinvolucrado_id, :otro, :especifique, :nombre_completo1, :email1, :telefono1, :nombre_completo2, :email2, :telefono2, :descripcion_del_evento, :nombre_del_dilenciador, :nombre_de_lider_de_informe) 
  end 

 
end 







