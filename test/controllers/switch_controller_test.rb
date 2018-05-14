require 'test_helper'

class SwitchControllerTest < ActionDispatch::IntegrationTest
  test "should get putswitch" do
    get switch_putswitch_url
    assert_response :success
  end

end
