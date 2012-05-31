# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_database, :class => 'Dict::Database' do
    name "MyString"
  end
end
