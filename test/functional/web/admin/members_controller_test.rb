require 'test_helper'

class Web::Admin::MembersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    sign_in @user

    @member = create :member
    @params = {:id => @member.id}
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    get :edit, @params
    assert_response :success
  end

  test "should get update" do
    put :update, @params
    assert_response :redirect
  end

end
