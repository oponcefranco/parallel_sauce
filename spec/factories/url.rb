FactoryGirl.define do
  factory :url, class: String do
    skip_create
    
    ignore do
      protocol 'http://'
      subdomain 'www'
      staging_name nil
      domain_name 'google.com'
      
      host { [subdomain, staging_name, domain_name].compact.join('.') }
      port nil
      
      path '/'
    end
    
    trait :secure do
      protocol 'https://'
      port nil
    end
    
    initialize_with { new("#{protocol}#{[host, port].compact.join(':')}#{path}")}
    
    factory :production do
      subdomain 'www'
      staging_name nil
      domain_name 'bookrenter.com'
      port nil
    end
    
    factory :staging do
      subdomain 'www'
      staging_name 'devqa'
      domain_name 'stg.bookrenter.com'
      port nil
    end
    
    factory :facebook do
      subdomain 'www'
      staging_name nil
      domain_name 'facebook.com'
      port nil
    end
    
  end
  
end