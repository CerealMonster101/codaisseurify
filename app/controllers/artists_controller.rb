class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def self.order_by_name
    order(:name)
  end

end
