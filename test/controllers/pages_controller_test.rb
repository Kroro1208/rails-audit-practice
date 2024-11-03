require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:one)
    @post = posts(:one)
    sign_in @user
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get audit" do
    get pages_audit_url
    assert_response :success
  end
end
