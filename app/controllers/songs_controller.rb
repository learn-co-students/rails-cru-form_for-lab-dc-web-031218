class SongsController < ApplicationController

  before_action :association, only: [:new,:edit]

  def index
    @songs = Song.all
  end


  private

  def association
      @artists = Artist.all
      @genres = Genre.all
  end

end
