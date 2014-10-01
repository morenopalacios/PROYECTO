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
    @riesgos = Riesgo.search(params[:search], params[:page]).order(:fecha, 'fecha ASC') 
    respond_to do |format|
      format.html
      format.csv { send_data @riesgos .to_csv }
      format.xls { send_data @riesgos .to_csv(col_sep: "\t") }
    end
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
        format.html { redirect_to @riesgo, notice: 'riesgo was successfully created.' }
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
        format.html { redirect_to @riesgo, notice: 'riesgo was successfully updated.' }
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
          format.html { redirect_to incidentes_path, notice: 'riesgo was successfully destroy.' }
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
    params.require(:riesgo).permit(:empresa, :funcionario_id, :fecha, :areadeseccionopuestodetrabajo, :tiporiesgo_id, :factorderiesgo, :fuentegeneradora, :efectoconocido, :numerodeexpuestos, :tiempo, :controlesexitentes, :controlesrecomendados, :consecuencia, :exposicion, :factordeponderacion, :repercuciondelriesgo) 
  end 

 
end 
































