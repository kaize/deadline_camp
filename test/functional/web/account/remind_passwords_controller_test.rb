require 'test_helper'

class Web::Account::RemindPasswordsControllerTest < ActionController::TestCase
  def setup
    @member = create :member
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    attrs = {:email => @member.email}

    post :create, :member => attrs
    assert_response :redirect
  end

end
