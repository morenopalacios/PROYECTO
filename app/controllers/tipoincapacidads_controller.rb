class TipoincapacidadsController < ApplicationController
  before_action :set_tipoincapacidad, only: [:show, :edit, :update, :destroy]

  # GET /tipoincapacidads
  # GET /tipoincapacidads.json
  def index
    @tipoincapacidads = Tipoincapacidad.all
  end

  # GET /tipoincapacidads/1
  # GET /tipoincapacidads/1.json
  def show
  end

  # GET /tipoincapacidads/new
  def new
    @tipoincapacidad = Tipoincapacidad.new
  end

  # GET /tipoincapacidads/1/edit
  def edit
  end

  # POST /tipoincapacidads
  # POST /tipoincapacidads.json
  def create
    @tipoincapacidad = Tipoincapacidad.new(tipoincapacidad_params)

    respond_to do |format|
      if @tipoincapacidad.save
        format.html { redirect_to @tipoincapacidad, notice: 'Tipoincapacidad was successfully created.' }
        format.json { render :show, status: :created, location: @tipoincapacidad }
      else
        format.html { render :new }
        format.json { render json: @tipoincapacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoincapacidads/1
  # PATCH/PUT /tipoincapacidads/1.json
  def update
    respond_to do |format|
      if @tipoincapacidad.update(tipoincapacidad_params)
        format.html { redirect_to @tipoincapacidad, notice: 'Tipoincapacidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipoincapacidad }
      else
        format.html { render :edit }
        format.json { render json: @tipoincapacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoincapacidads/1
  # DELETE /tipoincapacidads/1.json
  def destroy
    @tipoincapacidad.destroy
    respond_to do |format|
      format.html { redirect_to tipoincapacidads_url, notice: 'Tipoincapacidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoincapacidad
      @tipoincapacidad = Tipoincapacidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoincapacidad_params
      params.require(:tipoincapacidad).permit(:nombre)
    end
end
