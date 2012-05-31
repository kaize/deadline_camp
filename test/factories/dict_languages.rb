# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_language, :class => 'Dict::Language' do
    name "MyString"
  end
end
