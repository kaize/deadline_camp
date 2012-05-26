# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    email
    first_name { generate :string }
    last_name { generate :string }
    patronymic { generate :string }
    phone { generate :string }
    skype { generate :string }
    jabber { generate :string }
    icq { generate :string }
  end
end
