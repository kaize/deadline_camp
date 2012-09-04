# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess

FactoryGirl.define do
  factory 'photo_album/photo' do
    photo_album
    image { fixture_file_upload(Rails.root.join('test/fixtures/photos/test.png'), 'image/png') }
    name
    description
    main false
  end
end
