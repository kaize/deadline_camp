# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email
    password { generate :string }
    first_name { generate :name }
    last_name { generate :name }
  end
end
