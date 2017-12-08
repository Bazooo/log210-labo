require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @organism = organism(:one)
    @servicepoint = servicepoints(:one)
    @room = rooms(:one)
  end

  test "create Room" do
    assert @room.valid?
  end

  test "edit Room" do
    @name = @room.name
    @room.update(name: 'Black Room', places: '31', serviceType: 'EG', servicepoint_id: @servicepoint.id)
    assert_not_equal(@room.name, @name)
  end

    test'validate name' do
        @room.name = ''
        assert_not @room.valid?
    end

    test 'validate places' do
        @room.places = ''
        assert_not @room.valid?
    end

    test 'validate serviceType' do
        @room.serviceType = ''
        assert_not @room.valid?
    end

  def teardown

  end
end
