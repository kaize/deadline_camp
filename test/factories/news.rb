# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news do
    name
    uri
    body "MyText"
    published_at { Time.current }

    trait :published do
      after(:create) do |news|
        news.publish
      end
    end

  end
end
