Class Game_Of_Thrones::Episodes
attr_accessor :number, :name, :directedby, :writtenby, :airdate 
@@all = []

  def initialize(number, name, directedby, writtenby, airdate)
    @number = number
    @name = name
    @directedby = directedby
    @writtenby = writtenby
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