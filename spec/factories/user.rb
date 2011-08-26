FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :name do |n|
    "user#{n}@example.com"
  end

  factory :user do
    email
    name
  end
end
