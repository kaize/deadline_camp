require 'test_helper'

class Web::AccountsControllerTest < ActionController::TestCase
  setup do
    @member = create :member
    member_sign_in @member
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should post update" do
    attrs = attributes_for(:member)

    attrs[:additional_educations_attributes] = form_attributes_for('member/additional_education')
    attrs[:achievements_attributes] = form_attributes_for('member/achievement')
    attrs[:langs_attributes] = form_attributes_for('member/lang')
    attrs[:skill_program_langs_attributes] = form_attributes_for('member/skill_program_lang')
    attrs[:skill_ides_attributes] = form_attributes_for('member/skill_ide')
    attrs[:jobs_attributes] = form_attributes_for('member/job')
    attrs[:skill_databases_attributes] = form_attributes_for('member/skill_database')
    attrs[:skill_operation_systems_attributes] = form_attributes_for('member/skill_os')
    attrs[:skill_others_attributes] = form_attributes_for('member/skill_other')
    attrs[:others_attributes] = form_attributes_for('member/other')
    attrs[:preferences_attributes] = form_attributes_for('member/preference')

    post :update, :member => attrs
    assert_response :redirect
  end

end
