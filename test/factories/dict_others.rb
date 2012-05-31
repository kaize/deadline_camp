# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_other, :class => 'Dict::Other' do
    name
  end
end
