require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get process_login" do
    get login_process_login_url
    assert_response :success
  end

  test "should get logout" do
    get login_logout_url
    assert_response :success
  end

end
