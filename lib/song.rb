class Song

  attr_accessor :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_total = {} 
    #An empty hash
    @@genres.each do |genre|
      if genre_total[genre]
        genre_total[genre] += 1
      else   
        genre_total[genre] = 1
      end
    end
    genre_total
  end

  def self.artist_count
    artist_total ={}
    @@artists.each do |artist|
      if artist_total[artist]
        artist_total[artist] += 1
      else  
        artist_total[artist] =1
      end
    end
    artist_total
  end
end
