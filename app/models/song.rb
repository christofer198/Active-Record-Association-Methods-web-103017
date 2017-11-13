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
    Artist.find_or_create_by(name: "Drake")
    instance = Artist.select(:id).where(name: "Drake")
    @artist_id = instance[0].id
    binding.pry
  end
end
