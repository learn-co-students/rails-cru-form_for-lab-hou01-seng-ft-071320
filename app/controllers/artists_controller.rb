class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path
  end

  private

  def get_artist
    @artist = Artist.all.find_by(id: params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
