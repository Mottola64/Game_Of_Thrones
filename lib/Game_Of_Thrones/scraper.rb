class Game_Of_Thrones::Scraper
  
  attr_accessor :name, :recap, :memorableline 
  
  def self.scrape_episodes
    #episodes_array = [] 
    
    doc = Nokogiri::HTML(open("http://time.com/5517025/game-of-thrones-binge-watch-recaps/"))
    doc.css("id article body"). each do |episode|
      name = episode.css("h3.Episode name").text
      recap = episode.css("h3.Episode recap p").text
      memorableline = episode.css("h3.Most memorable line").text
      Game_Of_Thrones::Episodes.new(name, recap, memorableline)
      
      #episodes_array << {number: episode_number, name: episode_name, directedby: episode_directed, airdate: episode_airdate}
    end
    #episodes_array
  end
end
    