class Game_Of_Thrones::CLI
  
  def call
    puts "Game Of Thrones Episodes:"
    list_seasons
  end
  
  def list_seasons
    puts "1.  Season One"
    puts "2.  Season Two"
    puts "3.  Season Three"
    puts "4.  Season Four"
    puts "5.  Season Five"
    puts "6.  Season Six"
    puts "7.  Season Seven"
  end
end