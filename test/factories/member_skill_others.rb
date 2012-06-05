# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_skill_other, :class => 'Member::Skill::Other' do
    member
    association :dict, factory: :other
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
