require 'test_helper'

class Web::MembersControllerTest < ActionController::TestCase
  setup do
    #@member = create :member, :with_full_profile
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    attrs = attributes_for(:member)

    post :create, :member => attrs
    assert_response :redirect

    member = Member.find_by_email attrs[:email]
    assert_not_nil member
  end

end
