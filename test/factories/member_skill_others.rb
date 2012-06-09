# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'member/skill_other' do
    member
    name
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
