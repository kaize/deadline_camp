FactoryGirl.define do
  sequence :integer do |n|
    n
  end

  sequence :string do |n|
    "string-#{n}"
  end

  sequence :email do |n|
    "email_#{n}@mail.com"
  end
end
