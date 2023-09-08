class Movie
  attr_reader :title, :overview

  def initialize(data)
    @title = data[:original_title]
    @overview = data[:overview]
  end
end