# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_skill_program_lang, :class => 'Member::Skill::ProgramLang' do
    member
    association :dict, factory: :dict_program_lang
    level { generate :string }
    duration { generate :string }
    description { generate :string }
  end
end
