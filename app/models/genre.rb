require "pry"
class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    #binding.pry
    self.artists.collect do |artist|
      artist.name
    end
  end
end
