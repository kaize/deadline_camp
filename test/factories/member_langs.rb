# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_lang, :class => 'Member::Lang' do
    member_id 1
    language_id 1
    level "MyString"
  end
end
