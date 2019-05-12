class Game_Of_Thrones::Episodes
attr_accessor :name, :recap, :memorableline 
@@all = []

  def initialize(name, recap, memorableline)
    @name = name
    @recap = recap
    @memorableline = memorableline
    @@all << self 
  end

  def self.all
    @@all
  end

  def self.find_by_index(index)
    @@all[index]
  end
  
end