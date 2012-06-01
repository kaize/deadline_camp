# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_preference, :class => 'Member::Preference' do
    member
    description "MyString"
  end
end
