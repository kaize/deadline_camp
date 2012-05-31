# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_skill, :class => 'Member::Skill' do
    member_id 1
    type ""
    dict_id 1
    dict_type "MyString"
    level "MyString"
    duration ""
  end
end
