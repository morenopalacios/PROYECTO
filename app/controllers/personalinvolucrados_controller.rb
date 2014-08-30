class PersonalinvolucradosController < ApplicationController
  before_action :set_personalinvolucrado, only: [:show, :edit, :update, :destroy]

  # GET /personalinvolucrados
  # GET /personalinvolucrados.json
  def index
    @personalinvolucrados = Personalinvolucrado.all
  end

  # GET /personalinvolucrados/1
  # GET /personalinvolucrados/1.json
  def show
  end

  # GET /personalinvolucrados/new
  def new
    @personalinvolucrado = Personalinvolucrado.new
  end

  # GET /personalinvolucrados/1/edit
  def edit
  end

  # POST /personalinvolucrados
  # POST /personalinvolucrados.json
  def create
    @personalinvolucrado = Personalinvolucrado.new(personalinvolucrado_params)

    respond_to do |format|
      if @personalinvolucrado.save
        format.html { redirect_to @personalinvolucrado, notice: 'Personalinvolucrado was successfully created.' }
        format.json { render :show, status: :created, location: @personalinvolucrado }
      else
        format.html { render :new }
        format.json { render json: @personalinvolucrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalinvolucrados/1
  # PATCH/PUT /personalinvolucrados/1.json
  def update
    respond_to do |format|
      if @personalinvolucrado.update(personalinvolucrado_params)
        format.html { redirect_to @personalinvolucrado, notice: 'Personalinvolucrado was successfully updated.' }
        format.json { render :show, status: :ok, location: @personalinvolucrado }
      else
        format.html { render :edit }
        format.json { render json: @personalinvolucrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalinvolucrados/1
  # DELETE /personalinvolucrados/1.json
  def destroy
    @personalinvolucrado.destroy
    respond_to do |format|
      format.html { redirect_to personalinvolucrados_url, notice: 'Personalinvolucrado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personalinvolucrado
      @personalinvolucrado = Personalinvolucrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalinvolucrado_params
      params.require(:personalinvolucrado).permit(:nombre)
    end
end
