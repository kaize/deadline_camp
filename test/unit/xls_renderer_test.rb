require 'test_helper'

class XlsRendererTest < ActiveSupport::TestCase
  test 'xls mime type' do
    assert_equal :xls, Mime::XLS.to_sym
    assert_equal 'application/vnd.ms-excel', Mime::XLS.to_s
  end
end
