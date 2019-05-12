class Game_Of_Thrones::Scraper
  
  def self.scrape_episodes
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=1"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)
  end
end
      
  def self.scrape_episodes_two
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=2"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)
  end
end
  
  def self.scrape_episodes_three
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=3"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)  
  end
end
  def self.scrape_episodes_four
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=4"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)
  end
end
  def self.scrape_episodes_five
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=5"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)
  end
end
  def self.scrape_episodes_six
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=6"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)
  end
end
  def self.scrape_episodes_seven
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=7"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)  
  end
end
  def self.scrape_episodes_eight
    doc = Nokogiri::HTML(open("https://www.imdb.com/title/tt0944947/episodes?season=8"))
    doc.css("div.list_item"). each do |episode|
      name = episode.css("strong").text.strip
      recap = episode.css("item_description").text.strip
      airdate = episode.css("airdate").text.strip
      Game_Of_Thrones::Episodes.new(name, recap, airdate)
  end
end
end
