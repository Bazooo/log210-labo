require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: 'test@123.com', password: '123456', password_confirmation: '123456', role: 'directeur')
  end

  test "good user" do
    assert @user.valid?
  end

  test "no email should return false" do
    @user.email = '';
    assert_not @user.valid?
  end

  test "existing email should return false" do
    @user.email = 'abc@123.com';
    assert_not @user.valid?
  end

  test "no pass should return false" do
    @user.password = ''
    assert_not @user.valid?
  end

  test "pass less than 6 should return false" do
    @user.password = '12345'
    assert_not @user.valid?
  end

  test "bad pass confirm should return false" do
    @user.password_confirmation = '456'
    assert_not @user.valid?
  end

  test "bad role" do
    assert_raises(ArgumentError) {
      @user.role = 'oups'
    }
  end
end
