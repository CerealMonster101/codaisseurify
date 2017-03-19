class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :artist_name, presence: true
  validates :artist_name, uniqueness: true
  validates :image_url, presence: true
end
