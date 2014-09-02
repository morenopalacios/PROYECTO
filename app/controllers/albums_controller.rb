class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  
  def index
      @albums = Album.all
  end

  def show
  end

  def new
    @album = Album.new
  end


  def edit
  end

  def create
      @album = Album.new(album_params)
      render action: :new unless @album.save
  end

  def update
      render action: :edit unless @album.update_attributes(album_params)
  end

  def destroy
    @album.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:image, :recomendacion)
    end
end
