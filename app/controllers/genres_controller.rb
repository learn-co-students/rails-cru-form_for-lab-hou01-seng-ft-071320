class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.all.find(params[:id])
        #@songs = Song.all.select{ |song| song.genre.id == @genre.id}
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(post_params(:name))
        redirect_to genre_path(@genre)
    end

    def edit 
        @genre = Genre.all.find(params[:id])
    end

    def update
        @genre = Genre.update(post_params(:name))
        redirect_to genre_path(@genre)
    end


    def post_params(*args)
        params.require(:genre).permit(*args)
    end

end