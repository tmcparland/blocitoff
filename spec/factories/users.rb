pw = Faker::Internet.password
FactoryGirl.define do
    factory :user do
        
        email Faker::Internet.email
        password pw
        password_confirmation pw
    end
end