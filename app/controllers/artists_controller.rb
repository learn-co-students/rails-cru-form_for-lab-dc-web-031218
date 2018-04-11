class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def index
  end

  def new
  @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
  @artist = Artist.find(params[:id])
  @artist.update(artist_params(:name))
  redirect_to artist_path(@artist)
  end

  def destroy
  end

private

def artist_params(*args)
params.require(:artist).permit(*args)
end

end
