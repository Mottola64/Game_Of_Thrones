class Game_Of_Thrones::Episodes
attr_accessor :number, :name, :directedby, :airdate 
@@all = []

  def initialize(number, name, directedby, airdate)
    @number = number
    @name = name
    @directedby = directedby
    @airdate = airdate
    @@all << self 
  end

  def self.all
    @@all
  end

  def self.all
    @@all
  end
end