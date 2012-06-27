require 'test_helper'

class Api::MembersControllerTest < ActionController::TestCase
  def setup
    @member = create :member, :with_full_profile
  end

  test "should get index" do
    get :index, :format => :xls
    assert_response :success
  end

  test "should get show" do
    get :show, :id => @member.id, :format => :json
    assert_response :success
  end

end
