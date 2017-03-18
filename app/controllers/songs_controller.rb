class SongsController < ApplicationController
  def self.order_by_name
    order(:name)
  end

  def new
    @song = Song.new
  end

end
