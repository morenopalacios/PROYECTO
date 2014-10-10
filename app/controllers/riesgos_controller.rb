class RiesgosController  < ApplicationController 
  
  before_action :set_riesgo, only: [:show, :edit, :update, :destroy] 
 
  def estadistica
    @tipo = params[:grafica] 
     @ano = Hash.new
     @t1 = Riesgo.estadistica_x_trimestre("2014-01-01", "2014-03-30")
     @t2 = Riesgo.estadistica_x_trimestre("2014-04-01", "2014-06-30")
     @t3 = Riesgo.estadistica_x_trimestre("2014-07-01", "2014-09-30")
     @t4 = Riesgo.estadistica_x_trimestre("2014-10-01", "2014-12-31")
     @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
     @datos= { :size => '700x400',
            :theme => :thirty7signals, 
            :title => "Riesgo por trimestre", 
            :bg => 'EFF5FF', 
            :line_colors => 'B22222,0077CC, FFA500',
            :legend => @ano.keys,
            :data => @ano.values,
            :axis_range => [nil, [0,10,20,30,40,50,60,70,80,90,100]],
            :axis_with_labels => 'x,y',
            :labels => @ano.values }
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

    respond_to do |format|
      if @riesgo.save
        format.html { redirect_to @riesgo, notice: 'El registro fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @riesgo }
      else
        format.html { render :new }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end



 
def update
    respond_to do |format|
      if @riesgo.update(riesgo_params)
        format.html { redirect_to @riesgo, notice: 'El registro fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @riesgo }
      else
        format.html { render :edit }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end
  
 
def destroy 
      @riesgo.destroy 
       respond_to do |format|
          format.html { redirect_to incidentes_path, notice: 'El registro fue eliminado exitosamente.' }
          format.json { render :show, status: :ok, location: @riesgo }
          
       end 
    
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
































