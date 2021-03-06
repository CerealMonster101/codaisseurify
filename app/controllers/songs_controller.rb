class SongsController < ApplicationController

  before_action :set_artist

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.create(song_params)

    if @song.save
    redirect_to artist_path(@artist), notice: "Thanks for adding a new song!"
    else
      render :new
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist.id), notice: "You've deleted this song"
  end


  private

  def song_params
      params.require(:song).permit(:song_name, :artist_id)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
