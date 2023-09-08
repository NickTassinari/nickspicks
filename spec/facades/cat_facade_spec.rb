require 'rails_helper'

RSpec.describe CatFacade do
  describe "class_methods" do 
    describe ".facts" do
      it "returns an array of cat fact", :vcr do 
        expect(CatFacade.fact).to be_an(Array)
      end
    end
  end
end