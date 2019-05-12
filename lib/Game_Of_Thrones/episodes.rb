class Game_Of_Thrones::Episodes
attr_accessor :name, :recap, :airdate 
@@all = []

  def initialize(name, recap, airdate)
    @name = name
    @recap = recap
    @airdate = airdate
    @@all << self 
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end
  
  def self.find_by_index(index)
    @@all[index]
  end
  
end