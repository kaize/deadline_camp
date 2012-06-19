require 'test_helper'

class Web::Account::RemindPasswordsControllerTest < ActionController::TestCase
  def setup
    @member = create :member
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    attrs = {:email => @member.email}

    get :create, :member => attrs
    assert_response :redirect

    assert !ActionMailer::Base.deliveries.empty?
    email = ActionMailer::Base.deliveries.last
    assert_equal I18n.t('member_mailer.remind_password.subject'), email.subject
  end

end
