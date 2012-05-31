# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_lang, :class => 'Member::Lang' do
    member
    association :language, factory: :dict_language
    level { generate :string }
  end
end
