require 'test_helper'

class Web::MembersControllerTest < ActionController::TestCase
  setup do
    @member = create :member
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

    attrs[:additional_educations_attributes] = form_attributes_for(:member_additional_education)
    attrs[:achievements_attributes] = form_attributes_for(:member_achievement)
    attrs[:langs_attributes] = form_attributes_for(:member_lang)
    attrs[:skill_program_langs_attributes] = form_attributes_for(:member_skill_program_lang)
    attrs[:skill_ides_attributes] = form_attributes_for(:member_skill_ide)
    attrs[:jobs_attributes] = form_attributes_for(:member_job)
    attrs[:skill_databases_attributes] = form_attributes_for(:member_skill_database)
    attrs[:skill_operation_systems_attributes] = form_attributes_for(:member_skill_os)
    attrs[:skill_others_attributes] = form_attributes_for(:member_skill_other)
    attrs[:others_attributes] = form_attributes_for(:member_other)
    attrs[:preferences_attributes] = form_attributes_for(:member_preference)

    post :create, :member => attrs
    assert_response :redirect

    member = Member.find_by_email attrs[:email]
    assert_not_nil member
  end

end
