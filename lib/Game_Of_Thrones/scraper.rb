require "nokogiri"

class Game_Of_Thrones::Scraper
  attr_accessor :number, :name, :directedby, :writtenby, :airdate 
  url = https://en.wikipedia.org/wiki/List_of_Game_of_Thrones_episodes
  
  def self.scrape_episodes
    html = open(url)
    doc = Nokogiri::HTML(html).css("vevent")
    episodes_array = []
    
    doc.each do |episode|
      episode_number = episode.css("th").text
      episode_name = episode.css("td.summary").text
      episode_directed = episode.css("td").text
      episode_airdate = episode.css("<class="bday dtstart published updated">2011-04-24</span>").value
      
      episodes_array << {number: episode_number, name: episode_name, directedby: episode_directed, airdate: episode_airdate}
    end
    episodes_array
  end
end
    