class Game_Of_Thrones::CLI
  
  def call
    puts "Welcome to the Game Of Thrones episodes listings."
    puts "Which season would you like to see the episodes of?"
    Game_Of_Thrones::Scraper.scrape_episodes
    list_episodes
  end
  
  def list_episodes
    puts "Here is a list of all the Game of Thrones episodes:"
    episode = Game_Of_Thrones::Episodes.all
    episode.each.with_index(1) {|episode, index| puts "#{index}. #{episode.name}"}
    puts ""
  end
end
  #def display_episodes
    #Game_Of_Thrones::Episodes.all.each.with_index(1) do |episode, index|
   #   puts "#{index}: #{episode.name}"
  #  end
 # end
  
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
 
 # def goodbye
 #   puts "In the Game Of Thrones, you win or you die"
#  end
  