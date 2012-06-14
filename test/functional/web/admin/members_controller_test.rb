require 'test_helper'

class Web::Admin::MembersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    user_sign_in @user

    @member = create :member

    with_options :member => @member do |member|
      member.create 'member/additional_education'
      member.create 'member/achievement'
      member.create 'member/lang'
      member.create 'member/skill_program_lang'
      member.create 'member/skill_ide'
      member.create 'member/job'
      member.create 'member/skill_database'
      member.create 'member/skill_os'
      member.create 'member/skill_other'
      member.create 'member/other'
      member.create 'member/preference'
    end
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

  test "should delivery mail with approved member" do
    @params[:member] = {state_event: 'accept'}
    put :update, @params
    assert_response :redirect
    assert !ActionMailer::Base.deliveries.empty?
    email = ActionMailer::Base.deliveries.last
    assert_equal I18n.t('member_mailer.approved.subject'), email.subject
  end

end
