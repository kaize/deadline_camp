require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  def setup
    @member = create :member
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    attrs = {:email => @member.email, :password => @member.password}

    get :create, :member => attrs
    assert_response :redirect

    assert member_signed_in?
  end

  test "should not auth without password get create" do
    attrs = {:email => @member.email}

    get :create, :member => attrs
    #assert_response :redirect

    assert !member_signed_in?
  end

  test "should catch exeption bcrypt" do
    @member.password_digest = nil
    @member.save(:validate => false)
    attrs = {:email => @member.email}

    get :create, :member => attrs
    #assert_response :redirect

    assert !member_signed_in?
  end

end
