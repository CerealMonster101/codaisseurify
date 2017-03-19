class Song < ApplicationRecord
  belongs_to :artist

  validates :song_name, presence: true
  validates :artist, presence: true
end
