require "rails_helper" 

RSpec.describe "cat facts page" do 
  describe "cat facts page" do 
    it "shows a cat fact", :vcr do 
      visit root_path 
      click_link "Cat Facts"
      expect(current_path).to eq("/facts")
      # expect(page).to have_content("Here's a few cat facts: ")
      save_and_open_page
    end
  end
end