# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dict_ide, :class => 'Dict::Ide' do
    name
  end
end
