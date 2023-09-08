require "rails_helper" 

RSpec.describe "movies result page" do 
  describe "visit result page after search" do 
    it "shows zardoz no matter what ahhahahaha", :vcr do 
      visit root_path 
      fill_in :movie_search, with: "shrek"
      click_button "Search Movies"
      expect(current_path).to eq("/movies")
      expect(page).to have_content("You should totally just watch Zardoz")
    end
  end
end