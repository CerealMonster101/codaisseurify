class ArtistsController < ApplicationController
  before_action :set_artist, except: [:index]
  before_action :set_songs, except: [:index]

  #assigns all artists in db to an instance variable
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @songs = Song.new
  end



  def destroy
    if @artist.destroy
    redirect_to artists_path, notice: "Artist and their songs have been deleted"

    else
      redirect_to artists_path
    end
  end

#selects artist that song belongs to
  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_songs
    @songs = Artist.find(params[:id])
  end
end
