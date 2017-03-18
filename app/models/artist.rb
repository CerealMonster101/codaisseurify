class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :image_url, presence: true
end
