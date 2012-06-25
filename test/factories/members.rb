# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member do
    email
    password "MyString"
    first_name { generate :name }
    last_name { generate :name }
    phone
    city { generate :string }
    birthday { -19.year.from_now }

    trait :with_auth_token do
      auth_token { generate :name }
    end

    trait :with_full_profile do
      patronymic { generate :name }
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
      how_hear_about_as { generate :string }
      vkontakte { generate :uri }
      facebook { generate :uri }
      twitter { generate :uri }
      schoolyear_count { generate :integer }

      after(:create) do |instance|
        with_options :member => instance do |m|
          m.create 'member/additional_education'
          m.create 'member/achievement'
          m.create 'member/lang'
          m.create 'member/skill_program_lang'
          m.create 'member/skill_ide'
          m.create 'member/job'
          m.create 'member/skill_database'
          m.create 'member/skill_os'
          m.create 'member/skill_other'
          m.create 'member/other'
          m.create 'member/preference'
        end
      end
    end
  end
end
