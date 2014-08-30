class TipodocsController < ApplicationController
  before_action :set_tipodoc, only: [:show, :edit, :update, :destroy]

  # GET /tipodocs
  # GET /tipodocs.json
  def index
    @tipodocs = Tipodoc.all
  end

  # GET /tipodocs/1
  # GET /tipodocs/1.json
  def show
  end

  # GET /tipodocs/new
  def new
    @tipodoc = Tipodoc.new
  end

  # GET /tipodocs/1/edit
  def edit
  end

  # POST /tipodocs
  # POST /tipodocs.json
  def create
    @tipodoc = Tipodoc.new(tipodoc_params)

    respond_to do |format|
      if @tipodoc.save
        format.html { redirect_to @tipodoc, notice: 'Tipodoc was successfully created.' }
        format.json { render :show, status: :created, location: @tipodoc }
      else
        format.html { render :new }
        format.json { render json: @tipodoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipodocs/1
  # PATCH/PUT /tipodocs/1.json
  def update
    respond_to do |format|
      if @tipodoc.update(tipodoc_params)
        format.html { redirect_to @tipodoc, notice: 'Tipodoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipodoc }
      else
        format.html { render :edit }
        format.json { render json: @tipodoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipodocs/1
  # DELETE /tipodocs/1.json
  def destroy
    @tipodoc.destroy
    respond_to do |format|
      format.html { redirect_to tipodocs_url, notice: 'Tipodoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipodoc
      @tipodoc = Tipodoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipodoc_params
      params.require(:tipodoc).permit(:nombre)
    end
end
