require 'test_helper'

class Web::Admin::PagesControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    user_sign_in @user

    @page = create :page

    @params = {:id => @page.id}
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, @params
    assert_response :success
  end

  test "should get create" do
    @params[:page] = attributes_for(:page)
    post :create, @params
    assert_response :redirect
  end

  test "should get update" do
    @params[:page] = attributes_for(:page)
    put :update, @params
    assert_response :redirect
  end

end
