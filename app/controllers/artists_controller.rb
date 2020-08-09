class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.all.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(post_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit 
        @artist = Artist.all.find(params[:id])
    end

    def update
        @artist = Artist.update(post_params(:name, :bio))
        redirect_to artist_path(@artist)
    end


    def post_params(*args)
        params.require(:artist).permit(*args)
    end

end