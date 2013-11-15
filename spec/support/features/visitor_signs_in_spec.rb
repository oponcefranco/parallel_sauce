require 'spec_helper'

# run test against sauce labs
# feature 'Visitor signs up', :sauce => true do
feature 'Visitor signs in' do
  scenario 'with valid email and password' do
    homepage_path
    sign_in
    expect(page).to have_content('Log Out')
    log_out
  end
  
  scenario 'with invalid email' do
    homepage_path
    sign_in_with 'invalid_email', 'password'
    
    expect(page).to have_content('Log in')
  end
  
  scenario 'with blank password' do
    homepage_path
    sign_in_with 'valid@example.com', ''
    
    expect(page).to have_content('Log in')
  end
end