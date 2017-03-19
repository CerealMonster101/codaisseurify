require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(artist_name: "")
      artist.valid?
      expect(artist.errors).to have_key (:artist_name)
    end
  end

    describe "association with songs" do
    let(:artist) { create :artist}
    let!(:song) {create :song, artist: artist }

    it "deletes associated songs" do
      expect {artist.destroy}.to change(Song, :count).by(-1)
    end
  end
end
