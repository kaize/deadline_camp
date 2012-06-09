# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    email
    first_name { generate :name }
    last_name { generate :name }
    patronymic { generate :name }
    phone
    skype { generate :string }
    jabber { generate :string }
    icq { generate :integer }
    institute { generate :string }
    start_year { generate :integer }
    finish_year { generate :integer }
    department { generate :string }
    profession { generate :string }
    degree { generate :string }
    gpa { generate :site }
    camp_time true
    camp_life true
    camp_fee true
    camp_notebook true
    camp_training true
  end
end
