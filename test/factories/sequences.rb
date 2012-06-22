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

  sequence :phone do |n|
    "+7 (000) 000 00 #{n}"
  end

  sequence :email do |n|
    "email_#{n}@mail.com"
  end

  sequence :site do |n|
    "http://site_#{n}.com"
  end

  sequence :url do |n|
    "http://url_#{n}.com/#{n}"
  end

  sequence :uri do |n|
    "uri-#{n}"
  end
end
