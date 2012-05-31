# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_os, :class => 'Dict::Os' do
    name
  end
end
