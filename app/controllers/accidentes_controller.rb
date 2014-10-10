class AccidentesController < ApplicationController
  before_action :set_accidente, only: [:show, :edit, :update, :destroy, :enviar]

  # GET /accidentes
  # GET /accidentes.json
 
   def estadistica
   @tipo = params[:grafica] 
   @ano = Hash.new
   @t1 = Accidente.estadistica_x_trimestre("2014-01-01", "2014-03-30")
   @t2 = Accidente.estadistica_x_trimestre("2014-04-01", "2014-06-30")
   @t3 = Accidente.estadistica_x_trimestre("2014-07-01", "2014-09-30")
   @t4 = Accidente.estadistica_x_trimestre("2014-10-01", "2014-12-31")
   @ano = {"trimetre1" => @t1, "trimestre2" =>@t2, "trimestre3" => @t3, "trimestre4" => @t4}
   @datos= { :size => '700x400',
            :theme => :thirty7signals, 
            :title => "Accidente por trimestre", 
            :bg => 'EFF5FF', 
            :line_colors => 'B22222,0077CC, FFA500',
            :legend => @ano.keys,
            :data => @ano.values,
            :axis_range => [nil, [0,10,20,30,40,50,60,70,80,90,100]],
            :axis_with_labels => 'x,y',
            :labels => @ano.values }
 end


  def index
    @accidentes = Accidente.search(params[:search], params[:page]).order('fchAc ASC')
  end

  # GET /accidentes/1
  # GET /accidentes/1.json
  def show
  end

  # GET /accidentes/new
  def new
    @accidente = Accidente.new
  end

  # GET /accidentes/1/edit
  def edit
  end

  # POST /accidentes
  # POST /accidentes.json
  def create
    @accidente = Accidente.new(accidente_params)

    respond_to do |format|
      if @accidente.save
        format.html { redirect_to @accidente, notice: 'El registro fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @accidente }
      else
        format.html { render :new }
        format.json { render json: @accidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accidentes/1
  # PATCH/PUT /accidentes/1.json
  def update
    respond_to do |format|
      if @accidente.update(accidente_params)
        format.html { redirect_to @accidente, notice: 'El registro fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @accidente }
      else
        format.html { render :edit }
        format.json { render json: @accidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accidentes/1
  # DELETE /accidentes/1.json
  def destroy
    @accidente.destroy
    respond_to do |format|
      format.html { redirect_to accidentes_url, notice: 'El registro fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  def enviar  
    @accidente = Accidente.find(params[:id])  
    ActionCorreo.bienvenido_email(@accidente).deliver
        #render :show 
    redirect_to @accidente, notice: "Correo enviado exitosamente" 

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accidente
      @accidente = Accidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accidente_params
      params.require(:accidente).permit(:diligenciador, :eps, :afp, :arl, :documento, :tipodoc_id, :tipo_de_vinculacion, :razon_social, :direccion_sede_principal, :direccion_reportada, :telefono_reportado, :actividad_economica_sede_principal, :codigo, :telefono_sede_principal, :fax_sede_principal, :email_sede_principal, :departamento_id, :municipio_id, :zona, :actividad_economica_centro_trabajo, :direccion_centro_trabajo, :telefono_ct, :fax_ct, :email_ct, :departamento1, :municipio1, :zona1, :funcionario_id, :fchAc, :hora_del_accidente, :dia_de_la_semana, :jornada_en_que_sucede, :realiza_su_labor, :ocupacion_no_habitual, :tiempo_laborado, :lugar_donde_ocurrio_el_at, :mecanismo_o_formato_del_at, :tipo_de_lesion, :sitio, :tipo_de_accidente, :parte_del_cuerpo_afectado, :agente_del_accidente, :departamento2, :municipio2, :zona2, :mortal, :fecha_mortal, :descripcion_del_at, :hubo_personas_que_presenciaron_el_accidente, :testigo1, :tipodoc1, :documento1, :testigo2, :tipodoc2, :documento2, :responsable_informe, :tipodoc3, :documento3)
    end
end
