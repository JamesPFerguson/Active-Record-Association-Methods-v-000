class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs
  end

  def artist_count
    self.artists
  end

  def all_artist_names
    self.artists.name
  end
end
