Class Game_Of_Thrones::Episodes
attr_accessor :season, :episode :description
@@all = []

def initialize
  @@all << self 
end

def self.all
  @@all
end

def self.new_from_fandom(url)
  episode = Episodes.new
  episode.season = doc.search()
  
  def self.episode
  
end