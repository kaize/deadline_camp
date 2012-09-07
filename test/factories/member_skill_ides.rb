# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'member/skill_ide' do
    member
    ide
    level { generate :string }
    duration { generate :string }
    description
  end
end
