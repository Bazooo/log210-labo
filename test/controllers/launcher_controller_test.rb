require 'test_helper'

class LauncherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get launcher_index_url
    assert_response :success
  end

end
