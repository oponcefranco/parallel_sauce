require "spec_helper"

describe "TED-Ed", :sauce => true do
  
  context "Homepage" do
    
    before :all do
      @url = FactoryGirl.create(:staging)
      @email = FactoryGirl.generate(:email)
    end
    
    before :each do
      visit @url
    end
    
    it "should display logo" do
      page.should have_content("blah")
    end
    
  end
  
end