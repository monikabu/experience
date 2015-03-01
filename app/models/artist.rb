class Artist < ActiveRecord::Base
  has_many :pieces
  has_many :artist_details

  validates :name, presence: true
end
