# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'member/skill_os' do
    member
    association :dict, factory: :os
    level { generate :string }
    duration { generate :string }
    description
  end
end
