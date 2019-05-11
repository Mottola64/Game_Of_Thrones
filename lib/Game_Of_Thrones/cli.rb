class Game_Of_Thrones::CLI
  
  def call
    puts "Welcome! Here is a list of all of the Game of Thrones episodes."
    scrape_episodes
    list_seasons
    menu
    goodbye
  end
  
  def scrape_episodes
    Scraper.scrape_episodes
  end
  
  def list_episodes
    puts "Would you like to view the list of Game Of Thrones episodes? Enter y or n:"
    input = gets.strip.downcase
    if input == "y" 
      menu 
    elsif input == "n"
     goodbye
    else 
      puts "Enter valid input."
      list_episodes
    end
  end
  
  def display_books
    Book.all.each.with_index(1) do |book, index|
      puts "#{index}: #{book.title} - #{book.author}"
    end
  end
  
  #def list_seasons
   # @seasons = Game_Of_Thrones::Seasons.season
   # end
  
  #def menu
   # input = nil
    
   # while input != "exit"
  #  puts "Enter the number of the season you'd like more info on, type list to see the list of seasons again or type exit:"
   #   input = gets.strip.downcase
  #    case input
   #   when "list"
   #     list_seasons
    #  when "1"
      #  puts "more on 1"
  #    when "2"
       # puts "more on 2"
      #when "3"
     #   puts "more on 3"
    #  when "4"
     #   puts "more on 4"
    #  when "5"
    #    puts "more on 5"
     # when "6"
     #   puts "more on 6"
    #  when "7"
     #     puts "Not sure what you want? Type list or exit."
  #    end
 #   end
# end
 
  #def goodbye
  #  puts "In the Game Of Thrones, you win or you die"
 # end
  
end