require 'simplecov'
SimpleCov.start('rails') if ENV["COVERAGE"]

ENV["RAILS_ENV"] = "test"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each {|f| require f}


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  #fixtures :all

  # Add more helper methods to be used by all tests here...
  include AuthHelper
  include FactoryGirl::Syntax::Methods
  include ActionDispatch::TestProcess #FIXME


  FactoryGirl.reload
  include FactoryHelper
end

def fixture_file_upload(path, mime_type = nil, binary = false)
  fixture_path = ActionController::TestCase.fixture_path
  Rack::Test::UploadedFile.new("#{fixture_path}#{path}", mime_type, binary)
end
