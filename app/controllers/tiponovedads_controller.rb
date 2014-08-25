class TiponovedadsController < ApplicationController
  before_action :set_tiponovedad, only: [:show, :edit, :update, :destroy]

  # GET /tiponovedads
  # GET /tiponovedads.json
  def index
    @tiponovedads = Tiponovedad.all
  end

  # GET /tiponovedads/1
  # GET /tiponovedads/1.json
  def show
  end

  # GET /tiponovedads/new
  def new
    @tiponovedad = Tiponovedad.new
  end

  # GET /tiponovedads/1/edit
  def edit
  end

  # POST /tiponovedads
  # POST /tiponovedads.json
  def create
    @tiponovedad = Tiponovedad.new(tiponovedad_params)

    respond_to do |format|
      if @tiponovedad.save
        format.html { redirect_to @tiponovedad, notice: 'Tiponovedad was successfully created.' }
        format.json { render :show, status: :created, location: @tiponovedad }
      else
        format.html { render :new }
        format.json { render json: @tiponovedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiponovedads/1
  # PATCH/PUT /tiponovedads/1.json
  def update
    respond_to do |format|
      if @tiponovedad.update(tiponovedad_params)
        format.html { redirect_to @tiponovedad, notice: 'Tiponovedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiponovedad }
      else
        format.html { render :edit }
        format.json { render json: @tiponovedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiponovedads/1
  # DELETE /tiponovedads/1.json
  def destroy
    @tiponovedad.destroy
    respond_to do |format|
      format.html { redirect_to tiponovedads_url, notice: 'Tiponovedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiponovedad
      @tiponovedad = Tiponovedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiponovedad_params
      params.require(:tiponovedad).permit(:nombre)
    end
end
