class Game_Of_Thrones::CLI
  
  def welcome
    puts "Welcome to the Game Of Thrones episodes listings."
    puts "---------------------------------------------------"
    list_seasons
    puts ""
    call
    goodbye
  end
  
  def goodbye
    puts "In the Game Of Thrones, you win or you die"
  end 
  
  def list_seasons
    puts "1.  Season One"
    puts "2.  Season Two"
    puts "3.  Season Three"
    puts "4.  Season Four"
    puts "5.  Season Five"
    puts "6.  Season Six"
    puts "7.  Season Seven"
    puts "8.  Season Eight"
  end
  
  def season_one
    Game_Of_Thrones::Scraper.scrape_episodes
    list_episodes
  end
  
  def season_two
    Game_Of_Thrones::Scraper.scrape_episodes_two
    list_episodes
  end
  
  def season_three
    Game_Of_Thrones::Scraper.scrape_episodes_three
    list_episodes
  end
  
  def season_four
    Game_Of_Thrones::Scraper.scrape_episodes_four
    list_episodes
  end
  
  def season_five
    Game_Of_Thrones::Scraper.scrape_episodes_five
    list_episodes
  end
  
  def season_six
    Game_Of_Thrones::Scraper.scrape_episodes_six
    list_episodes
  end
  
  def season_seven
    Game_Of_Thrones::Scraper.scrape_episodes_seven
    list_episodes
  end
  
  def season_eight
    Game_Of_Thrones::Scraper.scrape_episodes_eight
    list_episodes
  end
  
   def list_episodes
    puts "Here is a list of all the Game of Thrones episodes:"
    episode = Game_Of_Thrones::Episodes.all
      episode.each.with_index(1) {|episode, index| puts "#{index}. #{episode.name}"}
      Game_Of_Thrones::Episodes.destroy_all
      puts ""
    puts "Type back to go back, or type exit to leave"
    puts ""
    input = gets.strip.downcase
    puts "---------------------------------------------------"
    if input = "back"
      list_seasons
    elsif input = "exit"
      goodbye
    else
      puts "Not Today! Please try again."
    end
  end
end



  def call
    puts "Enter the number of the season you'd like more info on:"
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "1"
      season_one
    when "2"
      season_two
    when "3"
      season_three
    when "4"
      season_four
    when "5"
      season_five
    when "6"
      season_six
    when "7"
      season_seven
    when "8"
      season_eight
    end
 end
 
end
 