# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    email
    password "MyString"
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
    group { generate :string }
    degree { generate :string }
    gpa { generate :site }
    camp_time true
    camp_life true
    camp_fee true
    camp_notebook true
    camp_training true
    auth_token { generate :name }
    how_hear_about_as { generate :string }
  end
end
