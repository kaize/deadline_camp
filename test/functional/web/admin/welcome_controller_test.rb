require 'test_helper'

class Web::Admin::WelcomeControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    user_sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
