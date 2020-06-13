FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "jsmith#{n}" }
    name "John Smith"
    provider "standard"
    sequence(:password) { |n| "jsmith#{n}" }
  end
end
