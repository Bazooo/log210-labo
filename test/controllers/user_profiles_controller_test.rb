require 'test_helper'

class UserProfilesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user_phone = user_phones(:one);
    @diploma = diplomas(:one);
    @user_profile = user_profiles(:one);
  end

  test "should redirect put update if not connected" do
    put user_profiles_update_url
    assert_redirected_to new_user_session_path
  end

  # test "should put update if connected" do
  #   sign_in users(:one)
  #
  #   put user_profiles_update_path, params: {
  #     :first_name => "Jaja",
  #     :last_name => "Lala",
  #     :address => "1234 Candyland",
  #     :organism_role => "Dondon",
  #     :user_phone_attributes => {
  #       :cell_number => "123456",
  #       :home_number => "123456",
  #       :work_number => "123456"
  #     },
  #     :diploma_attributes => {
  #       :program_name => "abc",
  #       :institution_name => "asd",
  #       :address => "123 asd",
  #       :date_start => "2007-01-01",
  #       :date_end => "2011-01-01"
  #     }
  #   };
  #   assert_response :success
  # end
  # :first_name, :last_name, :address, :organism_role,
  #   user_phone_attributes: [:cell_number, :home_number, :work_number],
  #   diploma_attributes: [:program_name, :institution_name, :address, :date_start, :date_end]
end
