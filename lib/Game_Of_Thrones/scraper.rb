class Game_Of_Thrones::Scraper
  
  attr_accessor :number, :name, :directedby, :airdate 
  
  def self.scrape_episodes
    wiki_url = "https://en.wikipedia.org/wiki/List_of_Game_of_Thrones_episodes"
    html = open(wiki_url)
    doc = Nokogiri::HTML(html).css("vevent")
    
    episodes_array = []
    
    doc.each do |episode|
      episode_number = episode.css("th").text
      episode_name = episode.css("td.summary").text
      episode_directed = episode.css("td").text
      episode_airdate = episode.css("span>").value
      
      episodes_array << {number: episode_number, name: episode_name, directedby: episode_directed, airdate: episode_airdate}
    end
    episodes_array
  end
end
    