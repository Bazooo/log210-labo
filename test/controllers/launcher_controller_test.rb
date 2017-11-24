require 'test_helper'

class LauncherControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in users(:one)
    get launcher_index_url
    assert_response :success
    sign_out :user
  end

end
