# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :os, :class => 'Os' do
    name
  end
end
