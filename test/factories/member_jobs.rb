# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member_job, :class => 'Member::Job' do
    member
    company     { generate :string }
    started_at  { -1.year.from_now }
    finished_at { Time.current }
    job         { generate :string }
    responsibility { generate :string }
    achievements { generate :string }
  end
end
