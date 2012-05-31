# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_skill_ide, :class => 'Member::Skill::Ide' do
    member
    association :dict, factory: :dict_ide
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
