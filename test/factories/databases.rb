# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :database, :class => 'Database' do
    name
  end
end
