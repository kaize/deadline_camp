# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory 'photo_album/photo' do
    photo_album
    #image "MyString"
    name "MyString"
  end
end
