require 'test_helper'

class Web::Admin::SessionsControllerTest < ActionController::TestCase
  def setup
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    attrs = {:email => @user.email, :password => @user.password}

    post :create, :user => attrs
    assert_response :redirect

    assert user_signed_in?
  end

  test "should delete destroy" do
    user_sign_in @user
    assert user_signed_in?

    delete :destroy
    assert_response :redirect

    assert !user_signed_in?
  end
end
