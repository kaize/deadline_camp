# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'member/lang' do
    member
    association :language, factory: :language
    level { generate :string }
  end
end
