# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_program_lang, :class => 'Dict::ProgramLang' do
    name "MyString"
  end
end
