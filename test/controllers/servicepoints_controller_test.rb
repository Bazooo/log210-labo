require 'test_helper'

class ServicepointsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

    test "should create servicepoint while directeur" do
        sign_in users(:one)
        organism = organism(:one)
        assert_not_nil Organism.find_by(name: organism.name)

        servicepoint = servicepoints(:one)
        post servicepoints_path params: {servicepoint:{name: servicepoint.name, address: servicepoint.address, phone: servicepoint.phone, email: servicepoint.email, fax: servicepoint.fax, organism_id: organism.id}}
        assert_response :redirect

        assert_not_nil Servicepoint.find_by(name: servicepoint.name)
        sign_out :user
    end

    test "should update servicepoint while directeur" do
        sign_in users(:one)
        organism = organism(:one)
        organism = Organism.find_by(name: organism.name)
        assert_not_nil Organism.find_by(name: organism.name)

        servicepoint = servicepoints(:one)
        post servicepoints_path params: {servicepoint:{name: servicepoint.name, address: servicepoint.address, phone: servicepoint.phone, email: servicepoint.email, fax: servicepoint.fax, organism_id: organism.id}}
        assert_response :redirect

        servicepoint = Servicepoint.find_by(name: servicepoint.name)
        assert_not_nil servicepoint

        /patch servicepoint_url(servicepoint), params: { servicepoint: { address: "33 Avenue Perdue" } }
        assert_redirected_to servicepoint_path(servicepoint)

        servicepoint.reload
        assert_equal "33 Avenue Perdue" , servicepoint.address/
        sign_out :user
    end

    test "should delete servicepoint while directeur" do
        sign_in users(:one)

        servicepoint = servicepoints(:one)
        assert_not_nil Servicepoint.find_by(name: servicepoint.name)

        delete organism_url(servicepoint)
        assert_response :redirect

        sign_out :user
    end
end
