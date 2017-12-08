require 'test_helper'

class ReferentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @referent = referents(:one)
    @reforganism = reforganism(:one)
    sign_in users(:one)
  end

  test "should get index" do

    get referents_url(:id => @reforganism.id)
    assert_response :success
  end

  test "should get new" do
    get new_referent_url
    assert_response :success
  end

  test "should create referent" do
    assert_difference('Referent.count') do
      post referents_url, params: { referent: { cellphone: 'cellphone', email: 'email', familyName: 'familyName', fax: 'fax', preference: 'fax', surname: 'surname', telephone: 'telephone', title: 'title' }, reforganismId: @reforganism.id }
    end

    assert_redirected_to referent_url(Referent.last, :refId => @reforganism)
  end

  test "should show referent" do
    get referent_url(@referent)
    assert_response :success
  end

  test "should get edit" do
    get edit_referent_url(@referent)
    assert_response :success
  end

  test "should update referent" do
    patch referent_url(@referent), params: { referent: { cellphone: @referent.cellphone, email: @referent.email, familyName: @referent.familyName, fax: @referent.fax, preference: @referent.preference, surname: 'changement', telephone: @referent.telephone, title: @referent.title } }
    assert_redirected_to referent_url(@referent)
  end

  test "should destroy referent" do
    assert_difference('Referent.count', -1) do
      delete referent_url(@referent)
    end

    assert_redirected_to referents_url
  end

  test "should add reforganism" do
    get add_ref_organism_url(:id => @referent.id, :refId => @reforganism.id)
    assert_redirected_to referent_url(@referent, :refId => @reforganism.id)
  end

end
