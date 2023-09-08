class CatFacade
  def self.fact
    results = CatFactsService.fact.map do |fact|
      CatFact.new(fact)
    end
  end
end