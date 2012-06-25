require 'test_helper'

class Web::Admin::MembersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    user_sign_in @user

    @member = create :member, :with_full_profile

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

  test "should put update" do
    put :update, @params
    assert_response :redirect
  end

  test "should delivery mail with approved member" do
    @params[:member] = {state_event: 'accept'}
    put :update, @params
    assert_response :redirect
  end

  test "should delete destroy" do
    delete :destroy, @params
    assert_response :redirect
  end

end
