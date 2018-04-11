class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    # @artist = Artist.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.find_or_create_by(song_params(:artist_id, :genre_id, :name))
    redirect_to song_url(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name))
    redirect_to song_url(@song)
    # render '_song_update'
  end

  private

  def song_params(*args)
    params.require(:song).permit(:artist_id, :genre_id, :name)
  end
end
