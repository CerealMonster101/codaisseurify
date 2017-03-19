require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(song_name: "")
      song.valid?
      expect(song.errors).to have_key (:song_name)
    end
  end
end
