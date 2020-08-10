class ArtistsController < ApplicationController

    def show
        find_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params(:name,:bio))
        redirect_to artist_path(@artist)
    end

    def edit
        find_artist
    end

    def update
        find_artist.update(artist_params(:name,:bio))
        redirect_to artist_path(@artist)
    end

    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
