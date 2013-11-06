require "spec_helper"

describe "Facebook", :sauce => true do
  
  context "Homepage" do
    
    before :all do
      @url = FactoryGirl.create(:facebook, :secure)
    end
    
    before :each do
      visit @url
    end
    
    it "should display logo" do
      expect(page).to have_css("a.lfloat")
      sleep 10
    end
    
  end
  
end
