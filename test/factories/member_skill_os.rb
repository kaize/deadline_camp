# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_skill_os, :class => 'Member::Skill::Os' do
    member
    association :dict, factory: :os
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
