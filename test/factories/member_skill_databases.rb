# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'member/skill_database' do
    member
    association :dict, factory: :database
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
