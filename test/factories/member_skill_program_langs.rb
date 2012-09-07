# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'member/skill_program_lang' do
    member
    program_lang
    level { generate :string }
    duration { generate :string }
    description
  end
end
