FactoryGirl.define do
  sequence :integer do |n|
    n
  end

  sequence :name do |n|
    "name-#{n}"
  end

  sequence :description do |n|
    "text-#{n}"
  end

  sequence :string do |n|
    "string-#{n}"
  end

  sequence :email do |n|
    "email_#{n}@mail.com"
  end

  sequence :site do |n|
    "http://site_#{n}.com"
  end
end
