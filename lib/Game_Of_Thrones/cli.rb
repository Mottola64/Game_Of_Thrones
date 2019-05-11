class Game_Of_Thrones::CLI
  
  def call
    list_seasons
    menu
    goodbye
  end
  
  def list_seasons
    puts "Game Of Thrones Seasons:"
    puts "1.  Season One"
    puts "2.  Season Two"
    puts "3.  Season Three"
    puts "4.  Season Four"
    puts "5.  Season Five"
    puts "6.  Season Six"
    puts "7.  Season Seven"
    end
  
  def menu
    input = nil
    
    while input != "exit"
    puts "Enter the number of the season you'd like more info on, type list to see the list of seasons again or type exit:"
      input = gets.strip.downcase
      case input
      when "list"
        list_seasons
      when "1"
        puts "more on 1"
      when "2"
        puts "more on 2"
      when "3"
        puts "more on 3"
      when "4"
        puts "more on 4"
      when "5"
        puts "more on 5"
      when "6"
        puts "more on 6"
      when "7"
        puts "more on 7"
      else
        puts "Not sure what you want? Type list or exit."
      end
    end
 end
  def goodbye
    puts "In the Game Of Thrones, you win or you die"
    end
  
end