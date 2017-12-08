require 'test_helper'

class RoomControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

    test "should create room while directeur" do
        sign_in users(:one)
        organism = organism(:one)
        servicepoint = servicepoints(:one)
        assert_not_nil Organism.find_by(name: organism.name)
        assert_not_nil Servicepoint.find_by(name: servicepoint.name)

        room = rooms(:one)
        assert_not_nil Room.find_by(name: room.name)
        sign_out :user
    end

    test "should not create organism while coordonateur" do
        sign_in users(:two)

        assert_not_equal 200, status

        post organisms_path rooms(:two)
        assert_response :redirect

        sign_out :user
    end

    test "show" do
        sign_in users(:one)
        room = rooms(:one)

        #show
        get room_url(room)
        assert_response :success

        sign_out :user
    end

    test "edit" do
        sign_in users(:one)
        room = rooms(:one)

        #edit
        get edit_room_path(room)
        assert_response :success

        sign_out :user
    end


    test "should update room while directeur" do
        sign_in users(:one)
        organism = organism(:one)
        servicepoint = servicepoints(:one)

        assert_not_nil Organism.find_by(name: organism.name)

        room = rooms(:one)

        assert_not_nil room

        patch room_url(room), params: { room: { name: "Some Room" } }
        assert_response :redirect

        room.reload
        assert_equal "Some Room" , room.name
        sign_out :user
    end

    test "should delete room while directeur" do
        sign_in users(:one)

        room = rooms(:one)
        assert_not_nil Room.find_by(name: room.name)

        delete room_url(room)
        assert_response :redirect

        sign_out :user
    end
end
