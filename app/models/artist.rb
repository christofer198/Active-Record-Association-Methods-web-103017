require 'pry'
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    #binding.pry
    instance = Song.where(artist_id: self.id).select(:genre_id)
    Genre.select(:id, :name).where(id: instance[0].genre_id)

  end

  def song_count
    #return the number of songs associated with the artist
    #binding.pry
    Song.where(artist_id: self.id).count
  end

  def genre_count
    #return the number of genres associated with the artist
    binding.pry
    
  end
end
