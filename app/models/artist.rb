require 'pry'
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    binding.pry
    instance = Song.where(artist_id: self.id).select(:genre_id)
    genre = Genre.select(:name).where(id: instance[0].genre_id)
    genre[0].name
  end

  def song_count
    #return the number of songs associated with the artist
  end

  def genre_count
    #return the number of genres associated with the artist
  end
end
