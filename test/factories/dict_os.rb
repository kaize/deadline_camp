# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_o, :class => 'Dict::Os' do
    name "MyString"
  end
end
