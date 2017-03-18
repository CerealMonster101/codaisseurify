class ArtistsController < ApplicationController

  def self.order_by_name
    order(:name)
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find (params[:id])
    @songs = @artist.songs
  end

  def edit
    if @artist.update(artist_params)
      image_params.each do |image|
        @artist.photos.create(image: image)
    end
  end
end
end
