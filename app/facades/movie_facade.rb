class MovieFacade 
  def self.search_movies(movie)
    results = ImdbService.search_movies(movie)[:results].map do |data|
      Movie.new(data)
    end
  end
end