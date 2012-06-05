# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program_lang, :class => 'ProgramLang' do
    name
  end
end
