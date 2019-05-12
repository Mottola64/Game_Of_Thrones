class Game_Of_Thrones::CLI
  
  def call
    puts "Welcome! Here is a list of all of the Game of Thrones episodes."
    scrape_episodes
    list_episodes
    #menu
    goodbye
  end
  
  def scrape_episodes
    Game_Of_Thrones::Scraper.scrape_episodes
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
  
  def display_episodes
    Game_Of_Thrones::Episodes.all.each.with_index(1) do |episode, index|
      puts "#{index}: #{episode.name}"
    end
  end
  
  def menu
    display_episodes
    puts "                                     "
    puts "Enter the number of the episode you’d like to learn more about or enter exit to leave the program:"
    puts "                                     "
    
    input = gets.strip
    
    if input.to_i.between?(1, Game_Of_Thrones::Episodes.all.size) 
      index = input.to_i - 1
     
      book = Game_Of_Thrones::Episodes.all[index]
      Game_Of_Thrones::Scraper.scrape_book_details(book) if book.image == nil
      puts "                                     "
      puts "||Category|| #{book.category_of_fiction}"
      puts "                                     "
      puts "||Description|| #{book.description}"
      puts "                                     "
      puts "||Author details|| #{book.author_details}"
      puts "                                     "
      puts "||Cover image|| #{book.image}"
      puts "                                     "
      list_books
      
    elsif input.downcase == "exit"
     goodbye
    else
      puts "Enter valid number."
      menu
    end
  end

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
 
  def goodbye
    puts "In the Game Of Thrones, you win or you die"
  end
  
end