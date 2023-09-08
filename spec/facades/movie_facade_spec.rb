require 'rails_helper'

RSpec.describe MovieFacade do
  describe "class_methods" do 
    describe ".search_movies" do
      it "returns an array of movie objects", :vcr do 
        expect(MovieFacade.search_movies("Zardoz")).to be_an(Array)
        
      end
      
    end
  end
  
end