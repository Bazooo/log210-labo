require 'test_helper'

class ReferentSearchesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @search = referent_searches(:one)
    sign_in users(:one)
  end

  test "should get new" do
    get new_referent_search_url
    assert_response :success
  end

  test "should create reforganism" do
    assert_difference('ReferentSearch.count') do
      post referent_searches_url(:refId => '1'), params: { referent_search: {familyName: @search.familyName, surname: @search.surname, title: @search.title, telephone: @search.telephone} }
    end

    assert_redirected_to referent_search_url(ReferentSearch.last)
  end

  test "should show reforganism" do
    get referent_search_url(@search, :refId => '1')
    assert_response :success
  end
end
