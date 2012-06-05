# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_skill_database, :class => 'Member::Skill::Database' do
    member
    association :dict, factory: :database
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
