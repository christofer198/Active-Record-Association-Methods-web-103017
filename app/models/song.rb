class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    instance = Genre.select(:name).where(id: 1)
    instance[0].name
    #binding.pry
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    self.artist = Artist.new(name: "Drake")
    #binding.pry
  end
end
