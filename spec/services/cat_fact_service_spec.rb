require "rails_helper"

RSpec.describe CatFactsService do 
  describe "class methods" do 
    describe ".fact" do 
      it "returns JSON object from API", :vcr do 
        response = CatFactsService.fact
        expect(response).to be_a(Array)
      end
    end
  end
end