FactoryGirl.define do
	factory :user do
    sequence(:name)  { |n| "user#{n}" }
    sequence(:email) { |n| "user#{n}@domain.com"}   
    password "password"
    password_confirmation "password"

		factory :admin do
      admin true
    end    
  end
end