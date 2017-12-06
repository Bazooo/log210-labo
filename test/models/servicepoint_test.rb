require 'test_helper'

class ServicepointTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @organism= organism(:one)
    @servicepoint = servicepoints(:one)
  end

  test "create Servicepoint" do
    assert @servicepoint.valid?
  end

  test "edit Servicepoint" do
    @addresse = @servicepoint.address
    @servicepoint.update(name: 'Lorganimse', address: '634 rue quelquepart',  email: 'lorganisme@email.com', phone: '555-555-5555', fax: '555-555-5555', organism_id: @organism.id)
    assert_not_equal(@servicepoint.address, @address)
  end

    test'validate name' do
        @servicepoint.name = ''
        assert_not @servicepoint.valid?
    end

    test 'validate address' do
        @servicepoint.address = ''
        assert_not @servicepoint.valid?
    end

    test 'validate phone' do
        @servicepoint.phone = ''
        assert_not @servicepoint.valid?
    end

    test 'validate email' do
        @servicepoint.email = ''
        assert_not @servicepoint.valid?
    end

  def teardown

  end
end
