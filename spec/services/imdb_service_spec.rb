require "rails_helper"

RSpec.describe ImdbService do 
  describe "class methods" do 
    describe ".movie_search" do 
      it "returns JSON object from API", :vcr do 
        response = ImdbService.search_movies("halloween")
        expect(response).to be_a(Hash)
      end
    end
  end
end