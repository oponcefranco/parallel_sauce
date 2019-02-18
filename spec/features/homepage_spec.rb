# require "spec_helper"
# 
# describe "Site", :sauce => true do
#   
#   context "Homepage" do
#     
#     before :all do
#       @url = FactoryBot.create(:staging)
#       @email = FactoryBot.generate(:email)
#     end
#     
#     before :each do
#       visit @url
#     end
#     
#     it "should display logo" do
#       page.should have_content("blah")
#     end
#     
#   end
#   
# end