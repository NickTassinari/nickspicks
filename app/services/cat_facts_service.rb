class CatFactsService 
  def self.fact
    get_url("facts")    
  end


  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: "https://cat-fact.herokuapp.com") 
  end
end