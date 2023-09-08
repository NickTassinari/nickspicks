require 'rails_helper'

RSpec.describe Movie do 
  describe 'initialize' do
    it "exists" do 
      attrs = { title: "Zardoz"}
      zardoz = Movie.new(attrs)

      expect(zardoz.title).to eq("Zardoz")
    end
    
  end
end