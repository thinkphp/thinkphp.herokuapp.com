require 'test_helper'

class KboyControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get homepage_path
    assert_response :success
  end

end
