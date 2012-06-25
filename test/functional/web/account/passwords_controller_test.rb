require 'test_helper'

class Web::Account::PasswordsControllerTest < ActionController::TestCase
  def setup
    @member = create :member, :with_auth_token
    @params = { :auth_token => @member.auth_token }
  end

  test "should get edit" do
    get :edit, @params
    assert_response :success
  end

  test "should put update" do
    old_password_digest = @member.password_digest
    attrs = {:password => 'new_password'}
    attrs[:password_confirmation] = attrs[:password]

    put :update, @params.merge(:member => attrs)
    assert_response :redirect

    @member.reload
    assert_not_equal @member.password_digest, old_password_digest
  end

end
