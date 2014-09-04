class TipoenfermedadsController < ApplicationController
  before_action :set_tipoenfermedad, only: [:show, :edit, :update, :destroy]

  # GET /tipoenfermedads
  # GET /tipoenfermedads.json
  def index
    @tipoenfermedads = Tipoenfermedad.all
  end

  # GET /tipoenfermedads/1
  # GET /tipoenfermedads/1.json
  def show
  end

  # GET /tipoenfermedads/new
  def new
    @tipoenfermedad = Tipoenfermedad.new
  end

  # GET /tipoenfermedads/1/edit
  def edit
  end

  # POST /tipoenfermedads
  # POST /tipoenfermedads.json
  def create
    @tipoenfermedad = Tipoenfermedad.new(tipoenfermedad_params)

    respond_to do |format|
      if @tipoenfermedad.save
        format.html { redirect_to @tipoenfermedad, notice: 'Tipoenfermedad was successfully created.' }
        format.json { render :show, status: :created, location: @tipoenfermedad }
      else
        format.html { render :new }
        format.json { render json: @tipoenfermedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoenfermedads/1
  # PATCH/PUT /tipoenfermedads/1.json
  def update
    respond_to do |format|
      if @tipoenfermedad.update(tipoenfermedad_params)
        format.html { redirect_to @tipoenfermedad, notice: 'Tipoenfermedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipoenfermedad }
      else
        format.html { render :edit }
        format.json { render json: @tipoenfermedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoenfermedads/1
  # DELETE /tipoenfermedads/1.json
  def destroy
    @tipoenfermedad.destroy
    respond_to do |format|
      format.html { redirect_to tipoenfermedads_url, notice: 'Tipoenfermedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoenfermedad
      @tipoenfermedad = Tipoenfermedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoenfermedad_params
      params.require(:tipoenfermedad).permit(:nombre)
    end
end
