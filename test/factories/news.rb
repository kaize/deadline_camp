# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news do
    name
    uri
    body "MyText"
    published_at { Time.current }
  end
end
