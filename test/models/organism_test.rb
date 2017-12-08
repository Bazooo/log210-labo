require 'test_helper'

class OrganismTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @organism = organism(:one)
  end

  test "create Organism" do
    assert @organism.valid?
  end

  test "edit Organism" do
    @addresse = @organism.address
    @organism.update(name: 'lorganisme', address: '124 Quelquepart', phone: '555-234-9945', email: 'lorganisme@email.com', fax: '555-231-9946', user_id: @user.id)
    assert_not_equal(@organism.address, @address)
  end

    test'validate name' do
        @organism.name = ''
        assert_not @organism.valid?
    end

    test 'validate address' do
        @organism.address = ''
        assert_not @organism.valid?
    end

    test 'validate phone' do
        @organism.phone = ''
        assert_not @organism.valid?
    end

    test 'validate email' do
        @organism.email = ''
        assert_not @organism.valid?
    end

  def teardown

  end
end
