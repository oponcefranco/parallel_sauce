require "spec_helper"

describe "TED-Ed", :sauce => true do
  
  context "Homepage" do
    
    before :all do
      @url = FactoryGirl.create(:staging)
    end
    
    before :each do
      visit @url
    end
    
    it "should display logo" do
      visit @url
    end
    
  end
  
end
