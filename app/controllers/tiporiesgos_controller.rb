class TiporiesgosController < ApplicationController
  before_action :set_tiporiesgo, only: [:show, :edit, :update, :destroy]

  # GET /tiporiesgos
  # GET /tiporiesgos.json
  def index
    @tiporiesgos = Tiporiesgo.all
  end

  # GET /tiporiesgos/1
  # GET /tiporiesgos/1.json
  def show
  end

  # GET /tiporiesgos/new
  def new
    @tiporiesgo = Tiporiesgo.new
  end

  # GET /tiporiesgos/1/edit
  def edit
  end

  # POST /tiporiesgos
  # POST /tiporiesgos.json
  def create
    @tiporiesgo = Tiporiesgo.new(tiporiesgo_params)

    respond_to do |format|
      if @tiporiesgo.save
        format.html { redirect_to @tiporiesgo, notice: 'Tiporiesgo was successfully created.' }
        format.json { render :show, status: :created, location: @tiporiesgo }
      else
        format.html { render :new }
        format.json { render json: @tiporiesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiporiesgos/1
  # PATCH/PUT /tiporiesgos/1.json
  def update
    respond_to do |format|
      if @tiporiesgo.update(tiporiesgo_params)
        format.html { redirect_to @tiporiesgo, notice: 'Tiporiesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiporiesgo }
      else
        format.html { render :edit }
        format.json { render json: @tiporiesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiporiesgos/1
  # DELETE /tiporiesgos/1.json
  def destroy
    @tiporiesgo.destroy
    respond_to do |format|
      format.html { redirect_to tiporiesgos_url, notice: 'Tiporiesgo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiporiesgo
      @tiporiesgo = Tiporiesgo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiporiesgo_params
      params.require(:tiporiesgo).permit(:nombre)
    end
end
