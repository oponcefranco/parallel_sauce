class User
  attr_accessor :first_name, :last_name, :email, :password, :password_confirmation
  
  def initialize
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @password   = password
    @password_confirmation = password_confirmation
  end
end

FactoryBot.define do
  sequence(:email) { |n| "email#{n}@example.com" }
  sequence(:count)
  
  factory :user do
    first_name 'John'
    last_name  'Doe'
    sequence(:email) { |n| "#{first_name}.#{last_name}#{n}@example.com".downcase }
    password 'foobar'
    password_confirmation { |u| u.password }
        
    # Child of :user factory, since it's in the `factory :user` block
    factory :admin do
      admin true
    end
  end
end