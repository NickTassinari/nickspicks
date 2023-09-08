class CatFact
  attr_reader :fact 

  def initialize(fact)
    @fact = fact[:text]
  end
end