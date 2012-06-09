require 'test_helper'

class Web::Admin::SessionsControllerTest < ActionController::TestCase
  def setup
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    attrs = {:email => @user.email, :password => @user.password}

    get :create, :user => attrs
    assert_response :redirect

    assert signed_in?
  end
end
