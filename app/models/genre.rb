class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    #binding.pry
    Song.where(genre_id: self.id).count
  end

  def artist_count
    # return the number of artists associated with the genre
    instance = Song.select(:artist_id).where(genre_id: self.id)
    instance.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    #binding.pry
    instance = Artist.select(:name)
    instance.collect{|x| x.name}
  end
end
