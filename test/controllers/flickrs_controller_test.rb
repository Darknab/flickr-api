require "test_helper"

class FlickrsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get flickrs_home_url
    assert_response :success
  end
end
