require 'spec_helper'

# feature 'Visitor signs up', :sauce => true do # run test against sauce labs
feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    homepage_path
    sign_up
    expect(page).to have_content('Sign out')
  end
  
  scenario 'with invalid email' do
    pending
    sign_up_with 'invalid_email', 'password'
    
    expect(page).to have_content('Sign in')
  end
  
  scenario 'with blank password' do
    pending
    sign_up_with 'valid@example', ''
    
    expect(page).to have_content('Sign in')
  end
end