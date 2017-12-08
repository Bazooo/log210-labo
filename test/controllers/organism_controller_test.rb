require 'test_helper'

class OrganismControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    test "should create organism while directeur" do
        sign_in users(:one)

        post organisms_path params: {organism:{name: "lorgnisme", address: "6001 rue belanger", phone: "555-555-5555", email: "lorgnisme@email.com", fax: "555-555-5555"}}
        assert_response :redirect

        assert_not_nil Organism.find_by(name: "lorgnisme")
        sign_out :user
    end


    test "should not create organism while coordonateur" do
        sign_in users(:two)

        assert_not_equal 200, status

        post organisms_path params: {organism:{name: "lorgnisma", address: "6001 rue belanger", phone: "555-555-5555", email: "lorgnisme@email.com", fax: "555-555-5555"}}
        assert_response :redirect

        sign_out :user
    end

    test "should update organism while directeur" do
        sign_in users(:one)

        post organisms_path params: {organism:{name: "lorgnisme", address: "6001 rue belanger", phone: "555-555-5555", email: "lorgnisme@email.com", fax: "555-555-5555"}}
        assert_response :redirect

        organism = Organism.find_by(name: "lorgnisme")
        assert_not_nil organism

        patch organism_url(organism), params: { organism: {address: "633 rue quelquepart"}}
        assert_response :redirect

        organism.reload
        assert_equal "633 rue quelquepart" , organism.address

        sign_out :user

    end

    test "should delete organism while directeur" do
        sign_in users(:one)

        post organisms_path params: {organism:{name: "lorgnisme", address: "6001 rue belanger", phone: "555-555-5555", email: "lorgnisme@email.com", fax: "555-555-5555"}}
        assert_response :redirect

        organism = Organism.find_by(name: "lorgnisme")
        assert_not_nil organism

        delete organism_url(organism)
        assert_response :redirect

        sign_out :user
    end

    test "show" do
        sign_in users(:one)
        organism = organism(:one)

        #show
        get organism_url(organism)
        assert_response :success

        sign_out :user
    end

    test "edit" do
        sign_in users(:one)
        organism = organism(:one)

        #edit
        get edit_organism_path(organism)
        assert_response :success

        sign_out :user
    end

    test "new" do
        sign_in users(:one)
        organism = organism(:one)

        #edit
        get new_organism_path(organism)
        assert_response :success

        sign_out :user
    end

    test "index" do
        sign_in users(:one)
        organism = organism(:one)

        #edit
        get organisms_path()
        assert_response :success

        sign_out :user
    end

end
