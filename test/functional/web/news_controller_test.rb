require 'test_helper'

class Web::NewsControllerTest < ActionController::TestCase
  setup do
    @news = create :news

    @params = {:id => @news}
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, @params
    assert_response :success
  end

end
