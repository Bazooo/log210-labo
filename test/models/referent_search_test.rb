require 'test_helper'

class ReferentSearchTest < ActiveSupport::TestCase

  def setup
    @user = users(:one)
    @search = referent_searches(:one)
  end


  test "should search referent" do

    assert @search.valid?
  end
end
