require 'test_helper'

class ServicepointsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

    test "should create servicepoint while directeur" do
        sign_in users(:one)

        organism = organism(:one)
        assert_not_nil Organism.find_by(name: organism.name)

        servicepoint = servicepoints(:one)
        assert_not_nil Servicepoint.find_by(name: servicepoint.name)

        sign_out :user
    end

    test "show" do
        sign_in users(:one)
        servicepoint = servicepoints(:one)

        #show
        get servicepoint_url(servicepoint)
        assert_response :success

        sign_out :user
    end

    test "edit" do
        sign_in users(:one)
        servicepoint = servicepoints(:one)

        #edit
        get edit_servicepoint_path(servicepoint)
        assert_response :success

        sign_out :user
    end


    test "should update servicepoint while directeur" do
        sign_in users(:one)
        organism = organism(:one)
        assert_not_nil Organism.find_by(name: organism.name)

        servicepoint = servicepoints(:one)
        assert_not_nil servicepoint

        #update
        patch servicepoint_url(servicepoint), params: { servicepoint: { address: "33 Avenue Perdue" } }
        assert_response :redirect

        servicepoint.reload
        assert_equal "33 Avenue Perdue" , servicepoint.address
        sign_out :user
    end

    test "should delete servicepoint while directeur" do
        sign_in users(:one)

        servicepoint = servicepoints(:one)
        assert_not_nil Servicepoint.find_by(name: servicepoint.name)

        delete servicepoint_url(servicepoint)
        assert_response :redirect

        sign_out :user
    end
end
