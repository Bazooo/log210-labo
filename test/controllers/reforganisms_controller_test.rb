require 'test_helper'

class ReforganismsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @reforganism = reforganism(:one)
    @reforganism.address = addresses(:one)
    @reforganism.telephone = telephones(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get reforganisms_url
    assert_response :success
  end

  test "should get new" do
    get new_reforganism_url
    assert_response :success
  end

  test "should create reforganism" do
    assert_difference('Reforganism.count') do
      post reforganisms_url(@reforganism), params: { reforganism: { name: @reforganism.name, email: @reforganism.email, website: @reforganism.website, address_attributes: {id: @reforganism.address.id, civic_number: @reforganism.address.civic_number, street: @reforganism.address.street, city: @reforganism.address.city, province: @reforganism.address.province, postcode: @reforganism.address.postcode}, telephone_attributes: {id: @reforganism.telephone.id, work: @reforganism.telephone.work, fax: @reforganism.telephone.fax}}}
    end

    assert_redirected_to reforganism_url(Reforganism.last)
  end

  test "should show reforganism" do
    get reforganism_url(@reforganism)
    assert_response :success
  end

  test "should get edit" do
    get edit_reforganism_url(@reforganism)
    assert_response :success
  end

  test "should update reforganism" do
    patch reforganism_url(@reforganism), params: { reforganism: { name: @reforganism.name, email: @reforganism.email, website: @reforganism.website, address_attributes: {id: @reforganism.address.id, civic_number: @reforganism.address.civic_number, street: @reforganism.address.street, city: @reforganism.address.city, province: @reforganism.address.province, postcode: @reforganism.address.postcode}, telephone_attributes: {id: @reforganism.telephone.id, work: @reforganism.telephone.work, fax: @reforganism.telephone.fax}} }
    assert_redirected_to reforganism_url(@reforganism)
  end

  test "should destroy reforganism" do
    @before = Time.now
    delete reforganism_url(@reforganism)
    @after = Time.now

    assert_redirected_to reforganisms_url
  end
end
