require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get send1" do
    get register_send1_url
    assert_response :success
  end

  test "should get send2" do
    get register_send2_url
    assert_response :success
  end

  test "should get send3" do
    get register_send3_url
    assert_response :success
  end

end
