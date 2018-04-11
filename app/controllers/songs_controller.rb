class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

  def index
    @songs = Song.all 
  end

  def new
    @song = Song.new
  end

  def create

    artist = Artist.find_or_create_by(name: song_params(:artist_id)[:artist_id])
    @song = Song.new(song_params(:name))
    @song.artist = artist
    genre = Genre.find_or_create_by(name: song_params(:genre_id)[:genre_id])
    @song.genre= genre
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    artist = Artist.find_or_create_by(name: song_params(:artist_id)[:artist_id])
    @song = Song.new(song_params(:name))
    @song.artist = artist
    genre = Genre.find_or_create_by(name: song_params(:genre_id)[:genre_id])
    @song.genre= genre
    @song.save
    redirect_to song_path(@song)
  end

  def destroy
  end


private

def song_params(*args)
params.require(:song).permit(*args)
end


end
