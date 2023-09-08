class FactsController < ApplicationController
  def index 
    @facts = CatFacade.fact
  end
end