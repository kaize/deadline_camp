# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_additional_education, :class => 'Member::AdditionalEducation' do
    member
    description
  end
end
