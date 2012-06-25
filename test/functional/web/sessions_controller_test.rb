require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  def setup
    @member = create :member
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    attrs = {:email => @member.email, :password => @member.password}

    post :create, :member => attrs
    assert_response :redirect

    assert member_signed_in?
  end

  test "should delete destroy" do
    member_sign_in @member
    assert member_signed_in?

    delete :destroy
    assert_response :redirect

    assert !member_signed_in?
  end

  # fix bag auth with bad password digest
  test "should not auth without password post create" do
    attrs = {:email => @member.email}

    post :create, :member => attrs
    assert_response :success

    assert !member_signed_in?
  end
  test "should catch exeption bcrypt" do
    @member.password_digest = nil
    @member.save(:validate => false)
    attrs = {:email => @member.email}

    post :create, :member => attrs
    assert_response :success

    assert !member_signed_in?
  end

end
