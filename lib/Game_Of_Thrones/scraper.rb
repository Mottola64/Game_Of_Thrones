class Game_Of_Thrones::Scraper
  
  def self.scrape_episodes
    doc = Nokogiri::HTML(open("http://time.com/5517025/game-of-thrones-binge-watch-recaps/"))
    doc.css("h2"). each do |episode|
      name = episode.css("/h3 p").text.strip
      recap = episode.css("h3.Episode recap p").text.strip
      memorableline = episode.css("h3.Most memorable line").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, memorableline)
      
      
    end
  end
end
    