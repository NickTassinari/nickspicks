class ImdbService 
  def self.search_movies(search)
    get_url("search/movie?query=#{search}")    
  end


  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: 'https://api.themoviedb.org/3/') do |f|
      f.headers["Authorization"] = ': Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjODU2NmUwOWQ0YzhlNzA5MGY3OTk4NzY5ZTY3YmVjYyIsInN1YiI6IjY0YTZlOWUxY2FlNjMyMDExZmEzM2VlMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ktR8_NTm6-4HlR71ClUP35avYe-PIpSUAyF3mFqWCpI'
    end
  end
end