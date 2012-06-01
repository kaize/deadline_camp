# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_other, :class => 'Member::Other' do
    member
    description "MyString"
  end
end
