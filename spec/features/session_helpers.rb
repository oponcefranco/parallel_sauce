module Features
  module SessionHelpers
    def url
      @url   = FactoryGirl.create(:staging)
    end
    
    def user
      @user  = FactoryGirl.build(:user)
    end
    
    def email
      @email = FactoryGirl.generate(:email)
    end
    
    def homepage_path
      url
      visit @url
      sleep 3
    end
    
    def sign_up_path
      click_on 'Register'
    end
    
    def sign_in_path
      click_on 'Log In'
    end
    
    def log_out
      click_on 'Log Out'
    end
    
    def sign_up
      sign_up_path
      fill_in 'First name', with: @user.first_name
      fill_in 'Last name', with: @user.last_name
      fill_in 'Email', with: @email
      fill_in 'Password', with: @password
      click_button 'Create your account'
    end
    
    def sign_in
      @user = FactoryGirl.build(
        :user, 
        first_name: 'John', 
        last_name: 'Silva', 
        email: 'test_user_100years@yahoo.com',
        password: 'password123'
        )
      sign_in_path
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'
    end
    
    def sign_in_with(email, password)
      sign_in_path
      fill_in 'Email', with: email
      fill_in 'Password', with: password
      click_button 'Log in'
    end
  end
end