# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_achievement, :class => 'Member::Achievement' do
    member_id 1
    description "MyText"
  end
end
