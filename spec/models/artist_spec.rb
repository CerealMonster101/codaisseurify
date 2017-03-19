require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(artist_name: "")
      artist.valid?
      expect(artist.errors).to have_key (:artist_name)
    end

    it "deletes associated songs" do
      expect {artist.destroy}.to change(Song, :count)
    end
  end
end
