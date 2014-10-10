class FuncionariosController < ApplicationController 
  
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy] 
 

 
  def index 
        @funcionarios = Funcionario.search(params[:search], params[:page]) 
  end 
 
  def show 
  end 
 
  def new 
        @funcionario = Funcionario.new 
  end 
 
  def edit 
  end 
 
  
  def create
     @funcionario = Funcionario.new(funcionario_params) 

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to @funcionario, notice: 'El registro fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

   def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to @funcionario, notice: 'El registro fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @funcionario }
      else
        format.html { render :edit }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def destroy 
       @funcionario.destroy
       respond_to do |format|
          format.html { redirect_to funcionarios_path, notice: 'El registro fue creado exitosamente.' }
          format.json { render :show, status: :ok, location: @funcionario }
          
       end
  end 
 
  private 
  # Use callbacks to share common setup or constraints between actions. 
  def set_funcionario 
       @funcionario = Funcionario.find(params[:id]) 
  end 
 
  # Never trust parameters from the scary internet, only allow the white list through. 
  def funcionario_params         
    params.require(:funcionario).permit(:nombres, :apellidos, :tipodoc_id, :identificacion, :genero, :telefono, :mail, :cargo, :centro_id, :codigo, :eps, :afp, :arl, :lugar_de_expedicion, :lugar_de_nacimiento, :fecha_de_nacimiento, :edad, :area, :fecha_de_ingreso, :antiguedad, :funciones_principales) 
  end 

 
end 





















