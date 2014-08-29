class GaleriaController < ApplicationController
  before_action :set_galerium, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /galeria
  # GET /galeria.json
  def index
    @galeria = Galerium.all
  end

  # GET /galeria/1
  # GET /galeria/1.json
  def show
  end

  # GET /galeria/new
  def new
    @galerium = Galerium.new
  end

  # GET /galeria/1/edit
  def edit
  end

  # POST /galeria
  # POST /galeria.json
  def create
    @galerium = Galerium.new(galerium_params)

    respond_to do |format|
      if @galerium.save
        format.html { redirect_to @galerium, notice: 'Galerium was successfully created.' }
        format.json { render :show, status: :created, location: @galerium }
      else
        format.html { render :new }
        format.json { render json: @galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria/1
  # PATCH/PUT /galeria/1.json
  def update
    respond_to do |format|
      if @galerium.update(galerium_params)
        format.html { redirect_to @galerium, notice: 'Galerium was successfully updated.' }
        format.json { render :show, status: :ok, location: @galerium }
      else
        format.html { render :edit }
        format.json { render json: @galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria/1
  # DELETE /galeria/1.json
  def destroy
    @galerium.destroy
    respond_to do |format|
      format.html { redirect_to galeria_url, notice: 'Galerium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galerium
      @galerium = Galerium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galerium_params
      params.require(:galerium).permit(:image, :recomendacion)
    end
end
