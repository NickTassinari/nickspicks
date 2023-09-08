class MoviesController < ApplicationController

  def index 
    search_term = params[:movie_search]
    
    search_term = "Zardoz"

    @movies = MovieFacade.search_movies(search_term)
  end
end