
class UsersControllerTest< ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should create_user_while_directeur" do
    sign_in users(:one)

    get "/"
    assert_equal 200, status

    post create_user_path, params: {user: {email: "johnnn@doe.com", password: "password", role: "directeur"}}
    assert_response :redirect

    assert_not_nil User.find_by(email: "johnnn@doe.com")
    sign_out :user
  end

  test "should create_user_while_coordonateur" do
    sign_in users(:two)

    get "/"
    assert_equal 200, status

    post create_user_path, params: {user: {email: "johnnn@doe.com", password: "password", role: "coordonateur"}}
    assert_response :redirect

    assert_not_nil User.find_by(email: "johnnn@doe.com")
    sign_out :user
  end


  test "should not_create_user_with_duplicate_email" do
    sign_in users(:one)

    get "/"
    assert_equal 200, status
    @userNumber = User.count

    post create_user_path, params: {user: {email: "johnnn@doe.com", password: "password", role: "assistant"}}

    post create_user_path, params: {user: {email: "johnnn@doe.com", password: "password", role: "assistant"}}

    assert_equal @userNumber+1, User.count

    sign_out :user
  end

  test "should_not_access_create_if_assistant" do

    sign_in users(:three)

    get "/"
    assert_equal 200, status

    post create_user_path, params: {user: {email: "johnnn@doe.com", password: "password", role: "assistant"}}

    assert_response :redirect
    assert_nil User.find_by(email: "johnnn@doe.com")
    sign_out :user
  end

  test "should_not_access_landing_if_not_logged_in" do

    get "/"
    assert_equal 302, status


  end

end